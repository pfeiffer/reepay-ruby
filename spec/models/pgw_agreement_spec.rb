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

# Unit tests for Reepay::PgwAgreement
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PgwAgreement' do
  before do
    # run before each test
    @instance = Reepay::PgwAgreement.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PgwAgreement' do
    it 'should create an instance of PgwAgreement' do
      expect(@instance).to be_instance_of(Reepay::PgwAgreement)
    end
  end
  describe 'test attribute "api_key"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "payment_type"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["mobilepay", "viabill"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.payment_type = value }.not_to raise_error
       #end
    end
  end

end

