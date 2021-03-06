# reepay

Reepay - the Ruby gem for the API

REST API to manage Reepay resources

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 1
- Package version: 1.0.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build reepay.gemspec
```

Then either install the gem locally:

```shell
gem install ./reepay-1.0.0.gem
```
(for development, run `gem install --dev ./reepay-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'reepay', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'reepay', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'reepay'

# Setup authorization
Reepay.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Reepay::AccountApi.new

begin
  #Create private key
  result = api_instance.create_private_key
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling AccountApi->create_private_key: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.reepay.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Reepay::AccountApi* | [**create_private_key**](docs/AccountApi.md#create_private_key) | **POST** /v1/account/privkey | Create private key
*Reepay::AccountApi* | [**create_public_key**](docs/AccountApi.md#create_public_key) | **POST** /v1/account/pubkey | Create public key
*Reepay::AccountApi* | [**expire_private_key**](docs/AccountApi.md#expire_private_key) | **POST** /v1/account/privkey/{key}/expire | Expire private key
*Reepay::AccountApi* | [**expire_public_key**](docs/AccountApi.md#expire_public_key) | **POST** /v1/account/pubkey/{key}/expire | Expire public key
*Reepay::AccountApi* | [**generate_webhook_secret**](docs/AccountApi.md#generate_webhook_secret) | **POST** /v1/account/webhook_settings/secret | Generate new webhook secret
*Reepay::AccountApi* | [**get_current_account**](docs/AccountApi.md#get_current_account) | **GET** /v1/account | Get account
*Reepay::AccountApi* | [**get_discount_settings**](docs/AccountApi.md#get_discount_settings) | **GET** /v1/account/discount_settings | Get discount settings
*Reepay::AccountApi* | [**get_mail_settings**](docs/AccountApi.md#get_mail_settings) | **GET** /v1/account/mail_settings | Get mail settings
*Reepay::AccountApi* | [**get_private_keys**](docs/AccountApi.md#get_private_keys) | **GET** /v1/account/privkey | Get list of private keys
*Reepay::AccountApi* | [**get_public_keys**](docs/AccountApi.md#get_public_keys) | **GET** /v1/account/pubkey | Get list of public keys
*Reepay::AccountApi* | [**get_webhook_settings**](docs/AccountApi.md#get_webhook_settings) | **GET** /v1/account/webhook_settings | Get webhook settings
*Reepay::AccountApi* | [**update_account_json**](docs/AccountApi.md#update_account_json) | **PUT** /v1/account | Update account
*Reepay::AccountApi* | [**update_discount_settings**](docs/AccountApi.md#update_discount_settings) | **PUT** /v1/account/discount_settings | Update discount settings
*Reepay::AccountApi* | [**update_mail_settings_json**](docs/AccountApi.md#update_mail_settings_json) | **PUT** /v1/account/mail_settings | Update mail settings
*Reepay::AccountApi* | [**update_webhook_settings_json**](docs/AccountApi.md#update_webhook_settings_json) | **PUT** /v1/account/webhook_settings | Update webhook settings
*Reepay::AddOnApi* | [**create_add_on**](docs/AddOnApi.md#create_add_on) | **POST** /v1/add_on | Create add-on
*Reepay::AddOnApi* | [**delete_add_on**](docs/AddOnApi.md#delete_add_on) | **DELETE** /v1/add_on/{handle} | Delete add-on
*Reepay::AddOnApi* | [**get_add_on**](docs/AddOnApi.md#get_add_on) | **GET** /v1/add_on/{handle} | Get add-on
*Reepay::AddOnApi* | [**get_add_ons**](docs/AddOnApi.md#get_add_ons) | **GET** /v1/add_on | Get list of add-ons
*Reepay::AddOnApi* | [**undelete_add_on**](docs/AddOnApi.md#undelete_add_on) | **POST** /v1/add_on/{handle}/undelete | Un-delete add-on
*Reepay::AddOnApi* | [**update_add_on**](docs/AddOnApi.md#update_add_on) | **PUT** /v1/add_on/{handle} | Update add-on
*Reepay::AdditionalCostApi* | [**cancel_additional_cost**](docs/AdditionalCostApi.md#cancel_additional_cost) | **POST** /v1/additional_cost/{handle}/cancel | Cancel pending additional cost
*Reepay::AdditionalCostApi* | [**create_additional_cost_json**](docs/AdditionalCostApi.md#create_additional_cost_json) | **POST** /v1/additional_cost | Create additional cost
*Reepay::AdditionalCostApi* | [**get_additional_cost**](docs/AdditionalCostApi.md#get_additional_cost) | **GET** /v1/additional_cost/{handle} | Get additional cost
*Reepay::AdditionalCostApi* | [**get_additional_costs**](docs/AdditionalCostApi.md#get_additional_costs) | **GET** /v1/additional_cost/subscription/{handle} | Get additional costs for subscription
*Reepay::AgreementApi* | [**activate_mobile_pay_subscription_agreement**](docs/AgreementApi.md#activate_mobile_pay_subscription_agreement) | **POST** /v1/agreement/mobile_pay_subscription/{ref}/activate | Activate pending MobilePay subscription agreement by MobilePay agreement id
*Reepay::AgreementApi* | [**create_card_gateway_agreement**](docs/AgreementApi.md#create_card_gateway_agreement) | **POST** /v1/agreement/card_gateway | Create card gateway agreement
*Reepay::AgreementApi* | [**create_pgw_agreement**](docs/AgreementApi.md#create_pgw_agreement) | **POST** /v1/agreement/pgw | Create payment gateway agreement
*Reepay::AgreementApi* | [**delete_gateway_agreement**](docs/AgreementApi.md#delete_gateway_agreement) | **DELETE** /v1/agreement/{id} | Delete gateway agreement
*Reepay::AgreementApi* | [**disable_gateway_agreement**](docs/AgreementApi.md#disable_gateway_agreement) | **POST** /v1/agreement/{id}/disable | Disable gateway agreement
*Reepay::AgreementApi* | [**enable_gateway_agreement**](docs/AgreementApi.md#enable_gateway_agreement) | **POST** /v1/agreement/{id}/enable | Enable gateway agreement
*Reepay::AgreementApi* | [**get_card_gateway_agreements**](docs/AgreementApi.md#get_card_gateway_agreements) | **GET** /v1/agreement/card_gateway | Get all card gateway agreements
*Reepay::AgreementApi* | [**get_gateway_agreement**](docs/AgreementApi.md#get_gateway_agreement) | **GET** /v1/agreement/{id} | Get gateway agreement
*Reepay::AgreementApi* | [**get_gateway_agreements**](docs/AgreementApi.md#get_gateway_agreements) | **GET** /v1/agreement | Get all agreements
*Reepay::AgreementApi* | [**get_mobile_pay_agreements**](docs/AgreementApi.md#get_mobile_pay_agreements) | **GET** /v1/agreement/mobile_pay_subscription | Get all mobilepay gateway agreements
*Reepay::AgreementApi* | [**prepare_mobile_pay_subscription_agreement**](docs/AgreementApi.md#prepare_mobile_pay_subscription_agreement) | **POST** /v1/agreement/mobile_pay_subscription | Prepare MobilePay subscription agreement
*Reepay::AgreementApi* | [**update_card_gateway_agreement**](docs/AgreementApi.md#update_card_gateway_agreement) | **PUT** /v1/agreement/card_gateway/{id} | Update card gateway agreement
*Reepay::AgreementApi* | [**update_pgw_agreement**](docs/AgreementApi.md#update_pgw_agreement) | **PUT** /v1/agreement/pgw/{id} | Update pgw agreement
*Reepay::AuthenticateApi* | [**login**](docs/AuthenticateApi.md#login) | **POST** /v1/authenticate/login | User login
*Reepay::AuthenticateApi* | [**renew**](docs/AuthenticateApi.md#renew) | **POST** /v1/authenticate/renew | Renew user login
*Reepay::AuthenticateApi* | [**verify_authentication**](docs/AuthenticateApi.md#verify_authentication) | **GET** /v1/authenticate/verify | Verify authentication
*Reepay::ChargeApi* | [**cancel_charge**](docs/ChargeApi.md#cancel_charge) | **POST** /v1/charge/{handle}/cancel | Cancel charge
*Reepay::ChargeApi* | [**create_charge**](docs/ChargeApi.md#create_charge) | **POST** /v1/charge | Create charge
*Reepay::ChargeApi* | [**get_charge**](docs/ChargeApi.md#get_charge) | **GET** /v1/charge/{handle} | Get charge
*Reepay::ChargeApi* | [**get_charges**](docs/ChargeApi.md#get_charges) | **GET** /v1/charge | Get charges
*Reepay::ChargeApi* | [**prepare_charge**](docs/ChargeApi.md#prepare_charge) | **POST** /v1/charge/prepare | Prepare charge
*Reepay::ChargeApi* | [**settle_charge**](docs/ChargeApi.md#settle_charge) | **POST** /v1/charge/{handle}/settle | Settle charge
*Reepay::CouponApi* | [**create_coupon**](docs/CouponApi.md#create_coupon) | **POST** /v1/coupon | Create coupon
*Reepay::CouponApi* | [**delete_coupon**](docs/CouponApi.md#delete_coupon) | **DELETE** /v1/coupon/{handle} | Delete coupon
*Reepay::CouponApi* | [**expire_coupon**](docs/CouponApi.md#expire_coupon) | **POST** /v1/coupon/{handle}/expire | Expire coupon
*Reepay::CouponApi* | [**get_coupon**](docs/CouponApi.md#get_coupon) | **GET** /v1/coupon/{handle} | Get coupon
*Reepay::CouponApi* | [**get_coupons**](docs/CouponApi.md#get_coupons) | **GET** /v1/coupon | Get list of coupons
*Reepay::CouponApi* | [**update_coupon**](docs/CouponApi.md#update_coupon) | **PUT** /v1/coupon/{handle} | Update coupon
*Reepay::CouponApi* | [**validate_code**](docs/CouponApi.md#validate_code) | **GET** /v1/coupon/code/validate | Validate coupon
*Reepay::CreditApi* | [**cancel_credit**](docs/CreditApi.md#cancel_credit) | **POST** /v1/credit/{handle}/cancel | Cancel credit
*Reepay::CreditApi* | [**create_credit_json**](docs/CreditApi.md#create_credit_json) | **POST** /v1/credit | Create credit
*Reepay::CreditApi* | [**get_credit**](docs/CreditApi.md#get_credit) | **GET** /v1/credit/{handle} | Get credit
*Reepay::CreditApi* | [**get_credits**](docs/CreditApi.md#get_credits) | **GET** /v1/credit/subscription/{handle} | Get credits for subscription
*Reepay::CustomerApi* | [**activate_payment_method**](docs/CustomerApi.md#activate_payment_method) | **POST** /v1/customer/{handle}/payment_method/{method_id}/activate | Activate payment method
*Reepay::CustomerApi* | [**add_card_json**](docs/CustomerApi.md#add_card_json) | **POST** /v1/customer/{handle}/payment_method/card | Add card payment method
*Reepay::CustomerApi* | [**create_customer_invoice**](docs/CustomerApi.md#create_customer_invoice) | **POST** /v1/customer/{handle}/invoice | Create invoice for customer
*Reepay::CustomerApi* | [**create_customer_json**](docs/CustomerApi.md#create_customer_json) | **POST** /v1/customer | Create customer
*Reepay::CustomerApi* | [**create_customer_note_json**](docs/CustomerApi.md#create_customer_note_json) | **POST** /v1/customer/{handle}/note | Create customer note
*Reepay::CustomerApi* | [**delete_customer**](docs/CustomerApi.md#delete_customer) | **DELETE** /v1/customer/{handle} | Delete customer
*Reepay::CustomerApi* | [**get_card**](docs/CustomerApi.md#get_card) | **GET** /v1/customer/{handle}/payment_method/card/{id} | Get card
*Reepay::CustomerApi* | [**get_card_details**](docs/CustomerApi.md#get_card_details) | **GET** /v1/customer/{handle}/payment_method/card/{id}/details | Get gateway card details
*Reepay::CustomerApi* | [**get_customer**](docs/CustomerApi.md#get_customer) | **GET** /v1/customer/{handle} | Get customer
*Reepay::CustomerApi* | [**get_customer_notes**](docs/CustomerApi.md#get_customer_notes) | **GET** /v1/customer/{handle}/note | Get customer notes
*Reepay::CustomerApi* | [**get_customer_payment_methods**](docs/CustomerApi.md#get_customer_payment_methods) | **GET** /v1/customer/{handle}/payment_method | Get payment methods
*Reepay::CustomerApi* | [**get_customers**](docs/CustomerApi.md#get_customers) | **GET** /v1/customer | Get list of customers
*Reepay::CustomerApi* | [**import_card_json**](docs/CustomerApi.md#import_card_json) | **POST** /v1/customer/{handle}/payment_method/card_import | Import card payment method
*Reepay::CustomerApi* | [**inactivate_payment_method**](docs/CustomerApi.md#inactivate_payment_method) | **POST** /v1/customer/{handle}/payment_method/{method_id}/inactivate | Inactivate payment method
*Reepay::CustomerApi* | [**reactivate_card**](docs/CustomerApi.md#reactivate_card) | **POST** /v1/customer/{handle}/payment_method/{card_id}/card_reactivate | Reactivate failed card
*Reepay::CustomerApi* | [**update_customer_json**](docs/CustomerApi.md#update_customer_json) | **PUT** /v1/customer/{handle} | Update customer
*Reepay::DiscountApi* | [**create_discount**](docs/DiscountApi.md#create_discount) | **POST** /v1/discount | Create discount
*Reepay::DiscountApi* | [**delete_discount**](docs/DiscountApi.md#delete_discount) | **DELETE** /v1/discount/{handle} | Delete discount
*Reepay::DiscountApi* | [**get_discount**](docs/DiscountApi.md#get_discount) | **GET** /v1/discount/{handle} | Get discount
*Reepay::DiscountApi* | [**get_discounts**](docs/DiscountApi.md#get_discounts) | **GET** /v1/discount | Get list of discounts
*Reepay::DiscountApi* | [**undelete_discount**](docs/DiscountApi.md#undelete_discount) | **POST** /v1/discount/{handle}/undelete | Undelete discount
*Reepay::DunningPlanApi* | [**create_dunning_plan_json**](docs/DunningPlanApi.md#create_dunning_plan_json) | **POST** /v1/dunning_plan | Create dunning plan
*Reepay::DunningPlanApi* | [**delete_dunning_plan**](docs/DunningPlanApi.md#delete_dunning_plan) | **DELETE** /v1/dunning_plan/{handle} | Delete dunning plan
*Reepay::DunningPlanApi* | [**get_dunning_plan**](docs/DunningPlanApi.md#get_dunning_plan) | **GET** /v1/dunning_plan/{handle} | Get dunning plan
*Reepay::DunningPlanApi* | [**get_dunning_plans**](docs/DunningPlanApi.md#get_dunning_plans) | **GET** /v1/dunning_plan | Get list of dunning plans
*Reepay::DunningPlanApi* | [**update_json**](docs/DunningPlanApi.md#update_json) | **PUT** /v1/dunning_plan/{handle} | Update dunning plan
*Reepay::EventApi* | [**get_event**](docs/EventApi.md#get_event) | **GET** /v1/event/{id} | Get event
*Reepay::EventApi* | [**get_events**](docs/EventApi.md#get_events) | **GET** /v1/event | Get list of events
*Reepay::InvoiceApi* | [**cancel_all_dunning_pending**](docs/InvoiceApi.md#cancel_all_dunning_pending) | **POST** /v1/invoice/cancel_all_dunning_pending/subscription/{handle} | Cancel all dunning and pending
*Reepay::InvoiceApi* | [**cancel_invoice**](docs/InvoiceApi.md#cancel_invoice) | **POST** /v1/invoice/{id}/cancel | Cancel invoice
*Reepay::InvoiceApi* | [**cancel_settle_later**](docs/InvoiceApi.md#cancel_settle_later) | **POST** /v1/invoice/{id}/settle/cancel | Cancel settle later
*Reepay::InvoiceApi* | [**cancel_transaction**](docs/InvoiceApi.md#cancel_transaction) | **POST** /v1/invoice/{id}/transaction/{transaction}/cancel | Cancel transaction
*Reepay::InvoiceApi* | [**create_or_update_billing_address**](docs/InvoiceApi.md#create_or_update_billing_address) | **PUT** /v1/invoice/{id}/billing_address | Create or update invoice billing address
*Reepay::InvoiceApi* | [**create_or_update_shipping_address**](docs/InvoiceApi.md#create_or_update_shipping_address) | **PUT** /v1/invoice/{id}/shipping_address | Create or update invoice shipping address
*Reepay::InvoiceApi* | [**delete_billing_address**](docs/InvoiceApi.md#delete_billing_address) | **DELETE** /v1/invoice/{id}/billing_address | Delete invoice billing address
*Reepay::InvoiceApi* | [**delete_shipping_address**](docs/InvoiceApi.md#delete_shipping_address) | **DELETE** /v1/invoice/{id}/shipping_address | Delete invoice shipping address
*Reepay::InvoiceApi* | [**detach_from_subscription**](docs/InvoiceApi.md#detach_from_subscription) | **POST** /v1/invoice/{id}/detach | Detach from subscription
*Reepay::InvoiceApi* | [**get_invoice**](docs/InvoiceApi.md#get_invoice) | **GET** /v1/invoice/{id} | Get invoice
*Reepay::InvoiceApi* | [**get_invoices**](docs/InvoiceApi.md#get_invoices) | **GET** /v1/invoice | Get list of invoices
*Reepay::InvoiceApi* | [**manual_settle**](docs/InvoiceApi.md#manual_settle) | **POST** /v1/invoice/{id}/manual_settle | Manual settle
*Reepay::InvoiceApi* | [**reactivate_invoice**](docs/InvoiceApi.md#reactivate_invoice) | **POST** /v1/invoice/{id}/reactivate | Reactivate invoice
*Reepay::InvoiceApi* | [**settle**](docs/InvoiceApi.md#settle) | **POST** /v1/invoice/{id}/settle | Settle
*Reepay::InvoiceApi* | [**transaction**](docs/InvoiceApi.md#transaction) | **GET** /v1/invoice/{id}/transaction/{transaction} | Get transaction
*Reepay::InvoiceApi* | [**transaction_details**](docs/InvoiceApi.md#transaction_details) | **GET** /v1/invoice/{id}/transaction/{transaction}/details | Get transaction details
*Reepay::InvoiceApi* | [**transaction_list**](docs/InvoiceApi.md#transaction_list) | **GET** /v1/invoice/{id}/transaction | Get transaction list
*Reepay::MailTemplateApi* | [**get_sample**](docs/MailTemplateApi.md#get_sample) | **GET** /v1/mail_template/sample | Get sample data
*Reepay::OrganisationApi* | [**get_organisation**](docs/OrganisationApi.md#get_organisation) | **GET** /v1/organisation | Get organisation
*Reepay::OrganisationApi* | [**update**](docs/OrganisationApi.md#update) | **PUT** /v1/organisation | Update organisation
*Reepay::PlanApi* | [**create_plan_json**](docs/PlanApi.md#create_plan_json) | **POST** /v1/plan | Create plan
*Reepay::PlanApi* | [**delete_plan**](docs/PlanApi.md#delete_plan) | **DELETE** /v1/plan/{handle} | Delete plan
*Reepay::PlanApi* | [**get_current_plan**](docs/PlanApi.md#get_current_plan) | **GET** /v1/plan/{handle}/current | Get plan
*Reepay::PlanApi* | [**get_plan**](docs/PlanApi.md#get_plan) | **GET** /v1/plan/{handle}/{version} | Get plan version
*Reepay::PlanApi* | [**get_plans**](docs/PlanApi.md#get_plans) | **GET** /v1/plan/{handle} | Get list of plan versions
*Reepay::PlanApi* | [**get_plans_list**](docs/PlanApi.md#get_plans_list) | **GET** /v1/plan | Get list of plans
*Reepay::PlanApi* | [**supersede_plan_json**](docs/PlanApi.md#supersede_plan_json) | **POST** /v1/plan/{handle} | Supersede plan
*Reepay::PlanApi* | [**update_plan_json**](docs/PlanApi.md#update_plan_json) | **PUT** /v1/plan/{handle} | Update plan
*Reepay::RefundApi* | [**create_refund**](docs/RefundApi.md#create_refund) | **POST** /v1/refund | Create refund
*Reepay::RefundApi* | [**get_refund**](docs/RefundApi.md#get_refund) | **GET** /v1/refund/{id} | Get refund
*Reepay::SubscriptionApi* | [**cancel_subscription**](docs/SubscriptionApi.md#cancel_subscription) | **POST** /v1/subscription/{handle}/cancel | Cancel subscription
*Reepay::SubscriptionApi* | [**change_next_period_start_json**](docs/SubscriptionApi.md#change_next_period_start_json) | **POST** /v1/subscription/{handle}/change_next_period_start | Change next renewal date
*Reepay::SubscriptionApi* | [**change_subscription**](docs/SubscriptionApi.md#change_subscription) | **PUT** /v1/subscription/{handle} | Change subscription
*Reepay::SubscriptionApi* | [**create_subscription_discount**](docs/SubscriptionApi.md#create_subscription_discount) | **POST** /v1/subscription/{handle}/discount | Add subscription discount
*Reepay::SubscriptionApi* | [**create_subscription_invoice**](docs/SubscriptionApi.md#create_subscription_invoice) | **POST** /v1/subscription/{handle}/invoice | Create invoice ondemand for subscription
*Reepay::SubscriptionApi* | [**create_subscription_json**](docs/SubscriptionApi.md#create_subscription_json) | **POST** /v1/subscription | Create subscription
*Reepay::SubscriptionApi* | [**delete_subscription_discount**](docs/SubscriptionApi.md#delete_subscription_discount) | **DELETE** /v1/subscription/{handle}/discount/{sdHandle} | Delete subscription discount
*Reepay::SubscriptionApi* | [**expire**](docs/SubscriptionApi.md#expire) | **POST** /v1/subscription/{handle}/expire | Expire subscription
*Reepay::SubscriptionApi* | [**get_subscription**](docs/SubscriptionApi.md#get_subscription) | **GET** /v1/subscription/{handle} | Get subscription
*Reepay::SubscriptionApi* | [**get_subscription_add_on**](docs/SubscriptionApi.md#get_subscription_add_on) | **GET** /v1/subscription/{handle}/add_on/{saHandle} | Get subscription add-on
*Reepay::SubscriptionApi* | [**get_subscription_add_ons**](docs/SubscriptionApi.md#get_subscription_add_ons) | **GET** /v1/subscription/{handle}/add_on | Get subscription add-ons
*Reepay::SubscriptionApi* | [**get_subscription_discount**](docs/SubscriptionApi.md#get_subscription_discount) | **GET** /v1/subscription/{handle}/discount/{sdHandle} | Get subscription discount
*Reepay::SubscriptionApi* | [**get_subscription_discounts**](docs/SubscriptionApi.md#get_subscription_discounts) | **GET** /v1/subscription/{handle}/discount | Get subscription discounts
*Reepay::SubscriptionApi* | [**get_subscription_payment_methods**](docs/SubscriptionApi.md#get_subscription_payment_methods) | **GET** /v1/subscription/{handle}/payment_method | Get payment methods
*Reepay::SubscriptionApi* | [**get_subscription_period_balance**](docs/SubscriptionApi.md#get_subscription_period_balance) | **GET** /v1/subscription/{handle}/period_balance | Get the period balance for subscription
*Reepay::SubscriptionApi* | [**get_subscriptions**](docs/SubscriptionApi.md#get_subscriptions) | **GET** /v1/subscription | Get list of subscriptions
*Reepay::SubscriptionApi* | [**interval_amount**](docs/SubscriptionApi.md#interval_amount) | **GET** /v1/subscription/{handle}/interval_amount | Calculate interval amount
*Reepay::SubscriptionApi* | [**on_hold**](docs/SubscriptionApi.md#on_hold) | **POST** /v1/subscription/{handle}/on_hold | Subscription on hold
*Reepay::SubscriptionApi* | [**preview_change_subscription**](docs/SubscriptionApi.md#preview_change_subscription) | **PUT** /v1/subscription/{handle}/preview | Preview change subscription
*Reepay::SubscriptionApi* | [**preview_subscription**](docs/SubscriptionApi.md#preview_subscription) | **POST** /v1/subscription/preview | Preview subscription
*Reepay::SubscriptionApi* | [**reactivate_subscription**](docs/SubscriptionApi.md#reactivate_subscription) | **POST** /v1/subscription/{handle}/reactivate | Reactivate subscription on hold
*Reepay::SubscriptionApi* | [**redeem_coupon_code**](docs/SubscriptionApi.md#redeem_coupon_code) | **POST** /v1/subscription/{handle}/coupon | Redeem coupon code for subscription
*Reepay::SubscriptionApi* | [**remove_all_payment_methods**](docs/SubscriptionApi.md#remove_all_payment_methods) | **DELETE** /v1/subscription/{handle}/payment_method | Remove all payment methods
*Reepay::SubscriptionApi* | [**remove_payment_method**](docs/SubscriptionApi.md#remove_payment_method) | **DELETE** /v1/subscription/{handle}/payment_method/{method_id} | Remove payment method
*Reepay::SubscriptionApi* | [**set_payment_method**](docs/SubscriptionApi.md#set_payment_method) | **POST** /v1/subscription/{handle}/payment_method | Set payment method
*Reepay::SubscriptionApi* | [**uncancel**](docs/SubscriptionApi.md#uncancel) | **POST** /v1/subscription/{handle}/uncancel | Uncancel subscription
*Reepay::UserApi* | [**delete_user**](docs/UserApi.md#delete_user) | **DELETE** /v1/user/{id} | Delete user
*Reepay::UserApi* | [**get_user**](docs/UserApi.md#get_user) | **GET** /v1/user/{id} | Get user
*Reepay::UserApi* | [**get_users**](docs/UserApi.md#get_users) | **GET** /v1/user | Get users
*Reepay::UserApi* | [**invite_user**](docs/UserApi.md#invite_user) | **POST** /v1/user/invite | Invite user
*Reepay::UserApi* | [**invite_user_accept**](docs/UserApi.md#invite_user_accept) | **POST** /v1/user/invite/{token} | Accept invite
*Reepay::UserApi* | [**invite_user_get**](docs/UserApi.md#invite_user_get) | **GET** /v1/user/invite/{token} | Get invite
*Reepay::UserApi* | [**reset_password**](docs/UserApi.md#reset_password) | **POST** /v1/user/reset_password | Reset password request
*Reepay::UserApi* | [**reset_password_with_token**](docs/UserApi.md#reset_password_with_token) | **POST** /v1/user/reset_password/{token} | Reset password
*Reepay::UserApi* | [**update_auth**](docs/UserApi.md#update_auth) | **PUT** /v1/user/{id}/groups | Update user groups
*Reepay::UserApi* | [**update_password**](docs/UserApi.md#update_password) | **PUT** /v1/user/{id}/password | Change password
*Reepay::UserApi* | [**update_user**](docs/UserApi.md#update_user) | **PUT** /v1/user/{id} | Update user
*Reepay::UserApi* | [**verify_email**](docs/UserApi.md#verify_email) | **POST** /v1/user/verify_email/{token} | Verify email
*Reepay::UserApi* | [**verify_email_request**](docs/UserApi.md#verify_email_request) | **POST** /v1/user/{id}/verify_email | Send verification email
*Reepay::WebhookApi* | [**disable_webhooks**](docs/WebhookApi.md#disable_webhooks) | **POST** /v1/webhook/disable | Disable webhooks
*Reepay::WebhookApi* | [**get_webhook**](docs/WebhookApi.md#get_webhook) | **GET** /v1/webhook/{id} | Get webhooks
*Reepay::WebhookApi* | [**get_webhook_requests**](docs/WebhookApi.md#get_webhook_requests) | **GET** /v1/webhook/{id}/request | Get webhook requests
*Reepay::WebhookApi* | [**get_webhooks**](docs/WebhookApi.md#get_webhooks) | **GET** /v1/webhook | Get list of webhooks
*Reepay::WebhookApi* | [**resend_json**](docs/WebhookApi.md#resend_json) | **POST** /v1/webhook/resend | Re-send webhooks
*Reepay::WebhookApi* | [**update_webhooks**](docs/WebhookApi.md#update_webhooks) | **POST** /v1/webhook/update | Update and resend webhooks


## Documentation for Models



## Documentation for Authorization


### apiKey

- **Type**: API key
- **API key parameter name**: X-Auth-Token
- **Location**: HTTP header

### basicAuth

- **Type**: HTTP basic authentication

