=begin
#API

#REST API to manage Reepay resources

OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Reepay::AgreementApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AgreementApi' do
  before do
    # run before each test
    @instance = Reepay::AgreementApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AgreementApi' do
    it 'should create an instance of AgreementApi' do
      expect(@instance).to be_instance_of(Reepay::AgreementApi)
    end
  end

  # unit tests for activate_mobile_pay_subscription_agreement
  # Activate pending MobilePay subscription agreement by MobilePay agreement id
  # 
  # @param ref MobilePay agreement id
  # @param [Hash] opts the optional parameters
  # @return [GatewayAgreement]
  describe 'activate_mobile_pay_subscription_agreement test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_card_gateway_agreement
  # Create card gateway agreement
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [CreateCardGatewayAgreement] :body 
  # @return [GatewayAgreement]
  describe 'create_card_gateway_agreement test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_pgw_agreement
  # Create payment gateway agreement
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [PgwAgreement] :body 
  # @return [GatewayAgreement]
  describe 'create_pgw_agreement test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_gateway_agreement
  # Delete gateway agreement
  # 
  # @param id Agreement id
  # @param [Hash] opts the optional parameters
  # @return [GatewayAgreement]
  describe 'delete_gateway_agreement test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for disable_gateway_agreement
  # Disable gateway agreement
  # 
  # @param id Agreement id
  # @param [Hash] opts the optional parameters
  # @return [GatewayAgreement]
  describe 'disable_gateway_agreement test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for enable_gateway_agreement
  # Enable gateway agreement
  # 
  # @param id Agreement id
  # @param [Hash] opts the optional parameters
  # @return [GatewayAgreement]
  describe 'enable_gateway_agreement test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_card_gateway_agreements
  # Get all card gateway agreements
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :only_active Get only active
  # @option opts [BOOLEAN] :non_deleted Get only non-deleted
  # @return [Array<GatewayAgreement>]
  describe 'get_card_gateway_agreements test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_gateway_agreement
  # Get gateway agreement
  # 
  # @param id Agreement id
  # @param [Hash] opts the optional parameters
  # @return [GatewayAgreement]
  describe 'get_gateway_agreement test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_gateway_agreements
  # Get all agreements
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :only_active Get only active
  # @option opts [BOOLEAN] :non_deleted Get only non-deleted
  # @return [Array<GatewayAgreement>]
  describe 'get_gateway_agreements test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_mobile_pay_agreements
  # Get all mobilepay gateway agreements
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :non_deleted Get only non-deleted
  # @return [Array<GatewayAgreement>]
  describe 'get_mobile_pay_agreements test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for prepare_mobile_pay_subscription_agreement
  # Prepare MobilePay subscription agreement
  # 
  # @param [Hash] opts the optional parameters
  # @return [MobilePaySubscriptionAgreementPrepareResponse]
  describe 'prepare_mobile_pay_subscription_agreement test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_card_gateway_agreement
  # Update card gateway agreement
  # 
  # @param id Agreement id
  # @param [Hash] opts the optional parameters
  # @option opts [UpdateCardGatewayAgreement] :body 
  # @return [GatewayAgreement]
  describe 'update_card_gateway_agreement test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_pgw_agreement
  # Update pgw agreement
  # 
  # @param id Agreement id
  # @param [Hash] opts the optional parameters
  # @option opts [UpdatePgwAgreement] :body 
  # @return [GatewayAgreement]
  describe 'update_pgw_agreement test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end