# Reepay::RefundApi

All URIs are relative to *https://api.reepay.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_refund**](RefundApi.md#create_refund) | **POST** /v1/refund | Create refund
[**get_refund**](RefundApi.md#get_refund) | **GET** /v1/refund/{id} | Get refund


# **create_refund**
> Refund create_refund(opts)

Create refund



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

api_instance = Reepay::RefundApi.new

opts = { 
  body: Reepay::CreateRefund.new # CreateRefund | 
}

begin
  #Create refund
  result = api_instance.create_refund(opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling RefundApi->create_refund: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateRefund**](CreateRefund.md)|  | [optional] 

### Return type

[**Refund**](Refund.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_refund**
> Refund get_refund(id)

Get refund



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

api_instance = Reepay::RefundApi.new

id = "id_example" # String | Refund id


begin
  #Get refund
  result = api_instance.get_refund(id)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling RefundApi->get_refund: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Refund id | 

### Return type

[**Refund**](Refund.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



