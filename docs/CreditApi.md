# Reepay::CreditApi

All URIs are relative to *https://api.reepay.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_credit**](CreditApi.md#cancel_credit) | **POST** /v1/credit/{handle}/cancel | Cancel credit
[**create_credit_json**](CreditApi.md#create_credit_json) | **POST** /v1/credit | Create credit
[**get_credit**](CreditApi.md#get_credit) | **GET** /v1/credit/{handle} | Get credit
[**get_credits**](CreditApi.md#get_credits) | **GET** /v1/credit/subscription/{handle} | Get credits for subscription


# **cancel_credit**
> Credit cancel_credit(handle)

Cancel credit



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

api_instance = Reepay::CreditApi.new

handle = "handle_example" # String | Credit handle


begin
  #Cancel credit
  result = api_instance.cancel_credit(handle)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling CreditApi->cancel_credit: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Credit handle | 

### Return type

[**Credit**](Credit.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_credit_json**
> Credit create_credit_json(opts)

Create credit



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

api_instance = Reepay::CreditApi.new

opts = { 
  body: Reepay::CreateCredit.new # CreateCredit | 
}

begin
  #Create credit
  result = api_instance.create_credit_json(opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling CreditApi->create_credit_json: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateCredit**](CreateCredit.md)|  | [optional] 

### Return type

[**Credit**](Credit.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_credit**
> Credit get_credit(handle)

Get credit



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

api_instance = Reepay::CreditApi.new

handle = "handle_example" # String | Credit handle


begin
  #Get credit
  result = api_instance.get_credit(handle)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling CreditApi->get_credit: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Credit handle | 

### Return type

[**Credit**](Credit.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_credits**
> Array&lt;Credit&gt; get_credits(handle)

Get credits for subscription



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

api_instance = Reepay::CreditApi.new

handle = "handle_example" # String | Subscription handle


begin
  #Get credits for subscription
  result = api_instance.get_credits(handle)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling CreditApi->get_credits: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Subscription handle | 

### Return type

[**Array&lt;Credit&gt;**](Credit.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



