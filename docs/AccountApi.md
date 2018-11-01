# Reepay::AccountApi

All URIs are relative to *https://api.reepay.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_private_key**](AccountApi.md#create_private_key) | **POST** /v1/account/privkey | Create private key
[**create_public_key**](AccountApi.md#create_public_key) | **POST** /v1/account/pubkey | Create public key
[**expire_private_key**](AccountApi.md#expire_private_key) | **POST** /v1/account/privkey/{key}/expire | Expire private key
[**expire_public_key**](AccountApi.md#expire_public_key) | **POST** /v1/account/pubkey/{key}/expire | Expire public key
[**generate_webhook_secret**](AccountApi.md#generate_webhook_secret) | **POST** /v1/account/webhook_settings/secret | Generate new webhook secret
[**get_current_account**](AccountApi.md#get_current_account) | **GET** /v1/account | Get account
[**get_discount_settings**](AccountApi.md#get_discount_settings) | **GET** /v1/account/discount_settings | Get discount settings
[**get_mail_settings**](AccountApi.md#get_mail_settings) | **GET** /v1/account/mail_settings | Get mail settings
[**get_private_keys**](AccountApi.md#get_private_keys) | **GET** /v1/account/privkey | Get list of private keys
[**get_public_keys**](AccountApi.md#get_public_keys) | **GET** /v1/account/pubkey | Get list of public keys
[**get_webhook_settings**](AccountApi.md#get_webhook_settings) | **GET** /v1/account/webhook_settings | Get webhook settings
[**update_account_json**](AccountApi.md#update_account_json) | **PUT** /v1/account | Update account
[**update_discount_settings**](AccountApi.md#update_discount_settings) | **PUT** /v1/account/discount_settings | Update discount settings
[**update_mail_settings_json**](AccountApi.md#update_mail_settings_json) | **PUT** /v1/account/mail_settings | Update mail settings
[**update_webhook_settings_json**](AccountApi.md#update_webhook_settings_json) | **PUT** /v1/account/webhook_settings | Update webhook settings


# **create_private_key**
> Key create_private_key

Create private key



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

api_instance = Reepay::AccountApi.new

begin
  #Create private key
  result = api_instance.create_private_key
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling AccountApi->create_private_key: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Key**](Key.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_public_key**
> Key create_public_key

Create public key



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

api_instance = Reepay::AccountApi.new

begin
  #Create public key
  result = api_instance.create_public_key
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling AccountApi->create_public_key: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Key**](Key.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **expire_private_key**
> expire_private_key(key)

Expire private key



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

api_instance = Reepay::AccountApi.new

key = "key_example" # String | Private key


begin
  #Expire private key
  api_instance.expire_private_key(key)
rescue Reepay::ApiError => e
  puts "Exception when calling AccountApi->expire_private_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| Private key | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **expire_public_key**
> expire_public_key(key)

Expire public key



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

api_instance = Reepay::AccountApi.new

key = "key_example" # String | Public key


begin
  #Expire public key
  api_instance.expire_public_key(key)
rescue Reepay::ApiError => e
  puts "Exception when calling AccountApi->expire_public_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| Public key | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **generate_webhook_secret**
> WebhookSettings generate_webhook_secret

Generate new webhook secret



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

api_instance = Reepay::AccountApi.new

begin
  #Generate new webhook secret
  result = api_instance.generate_webhook_secret
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling AccountApi->generate_webhook_secret: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebhookSettings**](WebhookSettings.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_current_account**
> Account get_current_account

Get account



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

api_instance = Reepay::AccountApi.new

begin
  #Get account
  result = api_instance.get_current_account
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling AccountApi->get_current_account: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Account**](Account.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_discount_settings**
> DiscountSettings get_discount_settings

Get discount settings



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

api_instance = Reepay::AccountApi.new

begin
  #Get discount settings
  result = api_instance.get_discount_settings
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling AccountApi->get_discount_settings: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DiscountSettings**](DiscountSettings.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_mail_settings**
> MailSettings get_mail_settings

Get mail settings



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

api_instance = Reepay::AccountApi.new

begin
  #Get mail settings
  result = api_instance.get_mail_settings
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling AccountApi->get_mail_settings: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MailSettings**](MailSettings.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_private_keys**
> Array&lt;Key&gt; get_private_keys

Get list of private keys



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

api_instance = Reepay::AccountApi.new

begin
  #Get list of private keys
  result = api_instance.get_private_keys
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling AccountApi->get_private_keys: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Key&gt;**](Key.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_public_keys**
> Array&lt;Key&gt; get_public_keys

Get list of public keys



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

api_instance = Reepay::AccountApi.new

begin
  #Get list of public keys
  result = api_instance.get_public_keys
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling AccountApi->get_public_keys: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Key&gt;**](Key.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_webhook_settings**
> WebhookSettings get_webhook_settings

Get webhook settings



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

api_instance = Reepay::AccountApi.new

begin
  #Get webhook settings
  result = api_instance.get_webhook_settings
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling AccountApi->get_webhook_settings: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebhookSettings**](WebhookSettings.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_account_json**
> Account update_account_json(opts)

Update account



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

api_instance = Reepay::AccountApi.new

opts = { 
  body: Reepay::UpdateAccount.new # UpdateAccount | 
}

begin
  #Update account
  result = api_instance.update_account_json(opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling AccountApi->update_account_json: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpdateAccount**](UpdateAccount.md)|  | [optional] 

### Return type

[**Account**](Account.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_discount_settings**
> DiscountSettings update_discount_settings(opts)

Update discount settings



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

api_instance = Reepay::AccountApi.new

opts = { 
  body: Reepay::DiscountSettings.new # DiscountSettings | 
}

begin
  #Update discount settings
  result = api_instance.update_discount_settings(opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling AccountApi->update_discount_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DiscountSettings**](DiscountSettings.md)|  | [optional] 

### Return type

[**DiscountSettings**](DiscountSettings.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_mail_settings_json**
> MailSettings update_mail_settings_json(opts)

Update mail settings



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

api_instance = Reepay::AccountApi.new

opts = { 
  body: Reepay::MailSettings.new # MailSettings | 
}

begin
  #Update mail settings
  result = api_instance.update_mail_settings_json(opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling AccountApi->update_mail_settings_json: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MailSettings**](MailSettings.md)|  | [optional] 

### Return type

[**MailSettings**](MailSettings.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_webhook_settings_json**
> WebhookSettings update_webhook_settings_json(opts)

Update webhook settings



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

api_instance = Reepay::AccountApi.new

opts = { 
  body: Reepay::UpdateWebhookSettings.new # UpdateWebhookSettings | 
}

begin
  #Update webhook settings
  result = api_instance.update_webhook_settings_json(opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling AccountApi->update_webhook_settings_json: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpdateWebhookSettings**](UpdateWebhookSettings.md)|  | [optional] 

### Return type

[**WebhookSettings**](WebhookSettings.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



