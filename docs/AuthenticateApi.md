# Reepay::AuthenticateApi

All URIs are relative to *https://api.reepay.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**login**](AuthenticateApi.md#login) | **POST** /v1/authenticate/login | User login
[**renew**](AuthenticateApi.md#renew) | **POST** /v1/authenticate/renew | Renew user login
[**verify_authentication**](AuthenticateApi.md#verify_authentication) | **GET** /v1/authenticate/verify | Verify authentication


# **login**
> UserLogin login(opts)

User login



### Example
```ruby
# load the gem
require 'reepay'

api_instance = Reepay::AuthenticateApi.new

opts = { 
  email: "email_example", # String | User email
  password: "password_example", # String | User password
  organisation: "organisation_example", # String | Organisation subdomain to login to
  account: "account_example" # String | Account handle or id to login to
}

begin
  #User login
  result = api_instance.login(opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling AuthenticateApi->login: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| User email | [optional] 
 **password** | **String**| User password | [optional] 
 **organisation** | **String**| Organisation subdomain to login to | [optional] 
 **account** | **String**| Account handle or id to login to | [optional] 

### Return type

[**UserLogin**](UserLogin.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **renew**
> UserRenew renew

Renew user login



### Example
```ruby
# load the gem
require 'reepay'

api_instance = Reepay::AuthenticateApi.new

begin
  #Renew user login
  result = api_instance.renew
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling AuthenticateApi->renew: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserRenew**](UserRenew.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **verify_authentication**
> verify_authentication

Verify authentication



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

api_instance = Reepay::AuthenticateApi.new

begin
  #Verify authentication
  api_instance.verify_authentication
rescue Reepay::ApiError => e
  puts "Exception when calling AuthenticateApi->verify_authentication: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



