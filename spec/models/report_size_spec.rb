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

# Unit tests for Rapid7VmConsole::ReportSize
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ReportSize' do
  before do
    # run before each test
    @instance = Rapid7VmConsole::ReportSize.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ReportSize' do
    it 'should create an instance of ReportSize' do
      expect(@instance).to be_instance_of(Rapid7VmConsole::ReportSize)
    end
  end
  describe 'test attribute "bytes"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "formatted"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

