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

# Unit tests for Reepay::PgwTransaction
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PgwTransaction' do
  before do
    # run before each test
    @instance = Reepay::PgwTransaction.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PgwTransaction' do
    it 'should create an instance of PgwTransaction' do
      expect(@instance).to be_instance_of(Reepay::PgwTransaction)
    end
  end
  describe 'test attribute "type"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["mobilepay", "viabill"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.type = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "ref_transaction"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "pgw_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
