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

# Unit tests for Reepay::ManualSettleTransfer
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ManualSettleTransfer' do
  before do
    # run before each test
    @instance = Reepay::ManualSettleTransfer.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ManualSettleTransfer' do
    it 'should create an instance of ManualSettleTransfer' do
      expect(@instance).to be_instance_of(Reepay::ManualSettleTransfer)
    end
  end
  describe 'test attribute "comment"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "reference"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "method"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["cash", "bank_transfer", "check", "other"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.method = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "payment_date"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
