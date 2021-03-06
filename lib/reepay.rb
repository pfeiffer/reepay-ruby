=begin
#API

#REST API to manage Reepay resources

OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

# Common files
require 'reepay/api_client'
require 'reepay/api_error'
require 'reepay/version'
require 'reepay/configuration'

# Models

# APIs
require 'reepay/api/account_api'
require 'reepay/api/add_on_api'
require 'reepay/api/additional_cost_api'
require 'reepay/api/agreement_api'
require 'reepay/api/authenticate_api'
require 'reepay/api/charge_api'
require 'reepay/api/coupon_api'
require 'reepay/api/credit_api'
require 'reepay/api/customer_api'
require 'reepay/api/discount_api'
require 'reepay/api/dunning_plan_api'
require 'reepay/api/event_api'
require 'reepay/api/invoice_api'
require 'reepay/api/mail_template_api'
require 'reepay/api/organisation_api'
require 'reepay/api/plan_api'
require 'reepay/api/refund_api'
require 'reepay/api/subscription_api'
require 'reepay/api/user_api'
require 'reepay/api/webhook_api'

module Reepay
  class << self
    # Customize default settings for the SDK using block.
    #   Reepay.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
