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

# Unit tests for Reepay::ReactivateSubscription
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ReactivateSubscription' do
  before do
    # run before each test
    @instance = Reepay::ReactivateSubscription.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ReactivateSubscription' do
    it 'should create an instance of ReactivateSubscription' do
      expect(@instance).to be_instance_of(Reepay::ReactivateSubscription)
    end
  end
  describe 'test attribute "start_date"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "partial_period_handling"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["bill_full", "bill_prorated", "bill_zero_amount", "no_bill"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.partial_period_handling = value }.not_to raise_error
       #end
    end
  end

end

