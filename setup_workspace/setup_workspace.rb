# setup_workspace.rb
#
# Purpose: Generation of Ruby based API client for the Rapid7 Nexpose and InsightVM v3 API
#
# Requirements: Java install and on PATH
#
# Configuration: Update CONSOLE_URL parameter with appropriate value
#
# Output: Generation of api and models based on Rapid7 Nexpose and InsightVM Swagger file
#

require 'date'
require 'digest'
require 'fileutils'
require 'json'
require 'net/http'
require 'net/https'

CONSOLE_URL = 'https://localhost:3780'
CONSOLE_USER = 'nxadmin'
CONSOLE_PASS = 'nxpassword'
CODEGEN_JAR_NAME = 'swagger-codegen-cli'
CODEGEN_JAR_VERSION = '2.3.0'

GEM_VERSION = '0.0.1'

# Download swagger codegen jar
uri = URI("http://central.maven.org/maven2/io/swagger/#{CODEGEN_JAR_NAME}/#{CODEGEN_JAR_VERSION}/#{CODEGEN_JAR_NAME}-#{CODEGEN_JAR_VERSION}.jar")

codegen_jar = "setup_workspace/#{CODEGEN_JAR_NAME}-#{CODEGEN_JAR_VERSION}.jar"
Net::HTTP.start(uri.host, uri.port) do |http|
  request = Net::HTTP::Get.new uri

  http.request request do |response|
    open codegen_jar, 'w' do |io|
      response.read_body do |chunk|
        io.write chunk
      end
    end
  end
end

# Fetch console version
uri = URI.parse("#{CONSOLE_URL}/api/3/administration/info")
console_version = nil
Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https', :verify_mode => OpenSSL::SSL::VERIFY_NONE) do |http|
  request = Net::HTTP::Get.new uri
  request.basic_auth(CONSOLE_USER, CONSOLE_PASS)

  response = http.request(request)
  if response.code == '200'
    console_version = JSON.parse(response.body)['version']['semantic']
  else
    abort('WARN: was not able to pull console version successfully, '\
         'please validate console connection details have been defined properly')
  end
end

gem_version = "#{GEM_VERSION}-#{console_version}"

# Manage API release dates
api_file_dir = 'api-files/'
tracking_file = 'api_history.json'
previous_version = '0.0.0'
api_history = JSON.parse(File.read(api_file_dir + tracking_file))

api_history.each do |entry|
  previous_version = entry['console_version'] if Gem::Version.new(entry['console_version']) > Gem::Version.new(previous_version)
end

# Download swagger file
console_swagger_path = "#{CONSOLE_URL}/api/3/json"
swagger_file = api_file_dir + "console-swagger-#{console_version}.json"
previous_swagger_file = api_file_dir + "console-swagger-#{previous_version}.json"

uri = URI(console_swagger_path)

Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https', :verify_mode => OpenSSL::SSL::VERIFY_NONE) do |http|
  request = Net::HTTP::Get.new uri

  http.request request do |response|
    open(swagger_file, 'w') do |io|
      response.read_body do |chunk|
        io.write chunk
      end
    end
  end
end

if previous_version == '0.0.0' || Digest::SHA1.file(swagger_file) != Digest::SHA1.file(previous_swagger_file)
  puts 'New version of API to be used for generating library. Cleaning up working directory...'
  # Remove previous directories and files from generation
  cleanup_files = ['.swagger-codegen', 'docs', 'lib', 'spec', '.rspec', 'Gemfile', 'Gemfile.lock' ,
                   'git_push.sh', 'Rakefile', 'rapid7_vm_console.gemspec', 'README.md']

  cleanup_files.each do |file|
    FileUtils.rm_rf(file)
  end

  puts 'Updating config.json version to: ' + gem_version
  config_location = 'setup_workspace/config.json'
  config = JSON.parse(File.read(config_location))
  config['gemVersion'] = gem_version
  File.open(config_location, 'w') do |file|
    file.write(JSON.pretty_generate(config))
  end

  # Generate library
  system("java -jar #{codegen_jar} generate -i #{swagger_file} -l ruby "\
         "--git-user-id \"rapid7\" "\
         "--git-repo-id \"vm-console-client-ruby\" "\
         "--release-note \"Update generated gem to version: #{gem_version}\" "\
         "-o ./ -c #{config_location}")

  # Update api history file for tracking
  api_history << { console_version: console_version, date: Date.today, checksum: Digest::SHA1.file(swagger_file) }
  File.open(api_file_dir + tracking_file, 'w') do |file|
    file.write(JSON.pretty_generate(api_history))
  end
else
  puts 'No new swagger file to process'
end
