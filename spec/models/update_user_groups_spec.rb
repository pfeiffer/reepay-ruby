=begin
#API

#REST API to manage Reepay resources

OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Reepay::UpdateUserGroups
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UpdateUserGroups' do
  before do
    # run before each test
    @instance = Reepay::UpdateUserGroups.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UpdateUserGroups' do
    it 'should create an instance of UpdateUserGroups' do
      expect(@instance).to be_instance_of(Reepay::UpdateUserGroups)
    end
  end
  describe 'test attribute "groups"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

