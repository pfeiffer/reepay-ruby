# Reepay::AgreementApi

All URIs are relative to *https://api.reepay.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activate_mobile_pay_subscription_agreement**](AgreementApi.md#activate_mobile_pay_subscription_agreement) | **POST** /v1/agreement/mobile_pay_subscription/{ref}/activate | Activate pending MobilePay subscription agreement by MobilePay agreement id
[**create_card_gateway_agreement**](AgreementApi.md#create_card_gateway_agreement) | **POST** /v1/agreement/card_gateway | Create card gateway agreement
[**create_pgw_agreement**](AgreementApi.md#create_pgw_agreement) | **POST** /v1/agreement/pgw | Create payment gateway agreement
[**delete_gateway_agreement**](AgreementApi.md#delete_gateway_agreement) | **DELETE** /v1/agreement/{id} | Delete gateway agreement
[**disable_gateway_agreement**](AgreementApi.md#disable_gateway_agreement) | **POST** /v1/agreement/{id}/disable | Disable gateway agreement
[**enable_gateway_agreement**](AgreementApi.md#enable_gateway_agreement) | **POST** /v1/agreement/{id}/enable | Enable gateway agreement
[**get_card_gateway_agreements**](AgreementApi.md#get_card_gateway_agreements) | **GET** /v1/agreement/card_gateway | Get all card gateway agreements
[**get_gateway_agreement**](AgreementApi.md#get_gateway_agreement) | **GET** /v1/agreement/{id} | Get gateway agreement
[**get_gateway_agreements**](AgreementApi.md#get_gateway_agreements) | **GET** /v1/agreement | Get all agreements
[**get_mobile_pay_agreements**](AgreementApi.md#get_mobile_pay_agreements) | **GET** /v1/agreement/mobile_pay_subscription | Get all mobilepay gateway agreements
[**prepare_mobile_pay_subscription_agreement**](AgreementApi.md#prepare_mobile_pay_subscription_agreement) | **POST** /v1/agreement/mobile_pay_subscription | Prepare MobilePay subscription agreement
[**update_card_gateway_agreement**](AgreementApi.md#update_card_gateway_agreement) | **PUT** /v1/agreement/card_gateway/{id} | Update card gateway agreement
[**update_pgw_agreement**](AgreementApi.md#update_pgw_agreement) | **PUT** /v1/agreement/pgw/{id} | Update pgw agreement


# **activate_mobile_pay_subscription_agreement**
> GatewayAgreement activate_mobile_pay_subscription_agreement(ref)

Activate pending MobilePay subscription agreement by MobilePay agreement id



### Example
```ruby
# load the gem
require 'reepay'
# setup authorization
Reepay.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Reepay::AgreementApi.new

ref = "ref_example" # String | MobilePay agreement id


begin
  #Activate pending MobilePay subscription agreement by MobilePay agreement id
  result = api_instance.activate_mobile_pay_subscription_agreement(ref)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling AgreementApi->activate_mobile_pay_subscription_agreement: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ref** | **String**| MobilePay agreement id | 

### Return type

[**GatewayAgreement**](GatewayAgreement.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_card_gateway_agreement**
> GatewayAgreement create_card_gateway_agreement(opts)

Create card gateway agreement



### Example
```ruby
# load the gem
require 'reepay'
# setup authorization
Reepay.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Reepay::AgreementApi.new

opts = { 
  body: Reepay::CreateCardGatewayAgreement.new # CreateCardGatewayAgreement | 
}

begin
  #Create card gateway agreement
  result = api_instance.create_card_gateway_agreement(opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling AgreementApi->create_card_gateway_agreement: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateCardGatewayAgreement**](CreateCardGatewayAgreement.md)|  | [optional] 

### Return type

[**GatewayAgreement**](GatewayAgreement.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_pgw_agreement**
> GatewayAgreement create_pgw_agreement(opts)

Create payment gateway agreement



### Example
```ruby
# load the gem
require 'reepay'
# setup authorization
Reepay.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Reepay::AgreementApi.new

opts = { 
  body: Reepay::PgwAgreement.new # PgwAgreement | 
}

begin
  #Create payment gateway agreement
  result = api_instance.create_pgw_agreement(opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling AgreementApi->create_pgw_agreement: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PgwAgreement**](PgwAgreement.md)|  | [optional] 

### Return type

[**GatewayAgreement**](GatewayAgreement.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_gateway_agreement**
> GatewayAgreement delete_gateway_agreement(id)

Delete gateway agreement



### Example
```ruby
# load the gem
require 'reepay'
# setup authorization
Reepay.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Reepay::AgreementApi.new

id = "id_example" # String | Agreement id


begin
  #Delete gateway agreement
  result = api_instance.delete_gateway_agreement(id)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling AgreementApi->delete_gateway_agreement: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Agreement id | 

### Return type

[**GatewayAgreement**](GatewayAgreement.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **disable_gateway_agreement**
> GatewayAgreement disable_gateway_agreement(id)

Disable gateway agreement



### Example
```ruby
# load the gem
require 'reepay'
# setup authorization
Reepay.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Reepay::AgreementApi.new

id = "id_example" # String | Agreement id


begin
  #Disable gateway agreement
  result = api_instance.disable_gateway_agreement(id)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling AgreementApi->disable_gateway_agreement: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Agreement id | 

### Return type

[**GatewayAgreement**](GatewayAgreement.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **enable_gateway_agreement**
> GatewayAgreement enable_gateway_agreement(id)

Enable gateway agreement



### Example
```ruby
# load the gem
require 'reepay'
# setup authorization
Reepay.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Reepay::AgreementApi.new

id = "id_example" # String | Agreement id


begin
  #Enable gateway agreement
  result = api_instance.enable_gateway_agreement(id)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling AgreementApi->enable_gateway_agreement: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Agreement id | 

### Return type

[**GatewayAgreement**](GatewayAgreement.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_card_gateway_agreements**
> Array&lt;GatewayAgreement&gt; get_card_gateway_agreements(opts)

Get all card gateway agreements



### Example
```ruby
# load the gem
require 'reepay'
# setup authorization
Reepay.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Reepay::AgreementApi.new

opts = { 
  only_active: false, # BOOLEAN | Get only active
  non_deleted: false # BOOLEAN | Get only non-deleted
}

begin
  #Get all card gateway agreements
  result = api_instance.get_card_gateway_agreements(opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling AgreementApi->get_card_gateway_agreements: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **only_active** | **BOOLEAN**| Get only active | [optional] [default to false]
 **non_deleted** | **BOOLEAN**| Get only non-deleted | [optional] [default to false]

### Return type

[**Array&lt;GatewayAgreement&gt;**](GatewayAgreement.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_gateway_agreement**
> GatewayAgreement get_gateway_agreement(id)

Get gateway agreement



### Example
```ruby
# load the gem
require 'reepay'
# setup authorization
Reepay.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Reepay::AgreementApi.new

id = "id_example" # String | Agreement id


begin
  #Get gateway agreement
  result = api_instance.get_gateway_agreement(id)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling AgreementApi->get_gateway_agreement: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Agreement id | 

### Return type

[**GatewayAgreement**](GatewayAgreement.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_gateway_agreements**
> Array&lt;GatewayAgreement&gt; get_gateway_agreements(opts)

Get all agreements



### Example
```ruby
# load the gem
require 'reepay'
# setup authorization
Reepay.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Reepay::AgreementApi.new

opts = { 
  only_active: false, # BOOLEAN | Get only active
  non_deleted: false # BOOLEAN | Get only non-deleted
}

begin
  #Get all agreements
  result = api_instance.get_gateway_agreements(opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling AgreementApi->get_gateway_agreements: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **only_active** | **BOOLEAN**| Get only active | [optional] [default to false]
 **non_deleted** | **BOOLEAN**| Get only non-deleted | [optional] [default to false]

### Return type

[**Array&lt;GatewayAgreement&gt;**](GatewayAgreement.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_mobile_pay_agreements**
> Array&lt;GatewayAgreement&gt; get_mobile_pay_agreements(opts)

Get all mobilepay gateway agreements



### Example
```ruby
# load the gem
require 'reepay'
# setup authorization
Reepay.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Reepay::AgreementApi.new

opts = { 
  non_deleted: false # BOOLEAN | Get only non-deleted
}

begin
  #Get all mobilepay gateway agreements
  result = api_instance.get_mobile_pay_agreements(opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling AgreementApi->get_mobile_pay_agreements: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **non_deleted** | **BOOLEAN**| Get only non-deleted | [optional] [default to false]

### Return type

[**Array&lt;GatewayAgreement&gt;**](GatewayAgreement.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **prepare_mobile_pay_subscription_agreement**
> MobilePaySubscriptionAgreementPrepareResponse prepare_mobile_pay_subscription_agreement

Prepare MobilePay subscription agreement



### Example
```ruby
# load the gem
require 'reepay'
# setup authorization
Reepay.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Reepay::AgreementApi.new

begin
  #Prepare MobilePay subscription agreement
  result = api_instance.prepare_mobile_pay_subscription_agreement
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling AgreementApi->prepare_mobile_pay_subscription_agreement: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MobilePaySubscriptionAgreementPrepareResponse**](MobilePaySubscriptionAgreementPrepareResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_card_gateway_agreement**
> GatewayAgreement update_card_gateway_agreement(id, opts)

Update card gateway agreement



### Example
```ruby
# load the gem
require 'reepay'
# setup authorization
Reepay.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Reepay::AgreementApi.new

id = "id_example" # String | Agreement id

opts = { 
  body: Reepay::UpdateCardGatewayAgreement.new # UpdateCardGatewayAgreement | 
}

begin
  #Update card gateway agreement
  result = api_instance.update_card_gateway_agreement(id, opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling AgreementApi->update_card_gateway_agreement: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Agreement id | 
 **body** | [**UpdateCardGatewayAgreement**](UpdateCardGatewayAgreement.md)|  | [optional] 

### Return type

[**GatewayAgreement**](GatewayAgreement.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_pgw_agreement**
> GatewayAgreement update_pgw_agreement(id, opts)

Update pgw agreement



### Example
```ruby
# load the gem
require 'reepay'
# setup authorization
Reepay.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Reepay::AgreementApi.new

id = "id_example" # String | Agreement id

opts = { 
  body: Reepay::UpdatePgwAgreement.new # UpdatePgwAgreement | 
}

begin
  #Update pgw agreement
  result = api_instance.update_pgw_agreement(id, opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling AgreementApi->update_pgw_agreement: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Agreement id | 
 **body** | [**UpdatePgwAgreement**](UpdatePgwAgreement.md)|  | [optional] 

### Return type

[**GatewayAgreement**](GatewayAgreement.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



