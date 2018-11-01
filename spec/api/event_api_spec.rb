=begin
#API

#REST API to manage Reepay resources

OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Reepay::EventApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'EventApi' do
  before do
    # run before each test
    @instance = Reepay::EventApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EventApi' do
    it 'should create an instance of EventApi' do
      expect(@instance).to be_instance_of(Reepay::EventApi)
    end
  end

  # unit tests for get_event
  # Get event
  # 
  # @param id Event id
  # @param [Hash] opts the optional parameters
  # @return [Event]
  describe 'get_event test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_events
  # Get list of events
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page number to get
  # @option opts [Integer] :size Page size to use
  # @option opts [String] :customer Customer handle
  # @option opts [String] :subscription Subscription handle
  # @option opts [String] :invoice Invoice id
  # @return [EventList]
  describe 'get_events test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
