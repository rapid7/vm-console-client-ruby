=begin
Ruby InsightVM API Client

OpenAPI spec version: 3
Contact: support@rapid7.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Rapid7VmConsole::ReportFrequency
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ReportFrequency' do
  before do
    # run before each test
    @instance = Rapid7VmConsole::ReportFrequency.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ReportFrequency' do
    it 'should create an instance of ReportFrequency' do
      expect(@instance).to be_instance_of(Rapid7VmConsole::ReportFrequency)
    end
  end
  describe 'test attribute "next_runtimes"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "repeat"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "start"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "type"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["schedule", "scan", "none"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.type = value }.not_to raise_error
       #end
    end
  end

end

