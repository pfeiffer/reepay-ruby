=begin
#API

#REST API to manage Reepay resources

OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Reepay::WebhookApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'WebhookApi' do
  before do
    # run before each test
    @instance = Reepay::WebhookApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WebhookApi' do
    it 'should create an instance of WebhookApi' do
      expect(@instance).to be_instance_of(Reepay::WebhookApi)
    end
  end

  # unit tests for disable_webhooks
  # Disable webhooks
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [WebhookDisableRequest] :body 
  # @return [Array<Webhook>]
  describe 'disable_webhooks test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_webhook
  # Get webhooks
  # 
  # @param id Webhook id or event id
  # @param [Hash] opts the optional parameters
  # @return [Array<Webhook>]
  describe 'get_webhook test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_webhook_requests
  # Get webhook requests
  # 
  # @param id Webhook id
  # @param [Hash] opts the optional parameters
  # @return [Array<WebhookRequest>]
  describe 'get_webhook_requests test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_webhooks
  # Get list of webhooks
  # 
  # @param created_before Get webhooks created before this date, in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. Use last created date as filter for next page.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size Page size. A maximum of 100 is allowed.
  # @option opts [String] :state Optional state to filter on, one of the following: &#x60;pending&#x60;, &#x60;disabled&#x60;, &#x60;failed&#x60;, &#x60;completed&#x60;
  # @return [Array<Webhook>]
  describe 'get_webhooks test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for resend_json
  # Re-send webhooks
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [WebhookResendRequest] :body 
  # @return [Array<Webhook>]
  describe 'resend_json test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_webhooks
  # Update and resend webhooks
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [WebhookUpdateRequest] :body 
  # @return [Array<Webhook>]
  describe 'update_webhooks test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
