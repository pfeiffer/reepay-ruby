# Reepay::MailTemplateApi

All URIs are relative to *https://api.reepay.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_sample**](MailTemplateApi.md#get_sample) | **GET** /v1/mail_template/sample | Get sample data


# **get_sample**
> Hash&lt;String, Object&gt; get_sample

Get sample data



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

api_instance = Reepay::MailTemplateApi.new

begin
  #Get sample data
  result = api_instance.get_sample
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling MailTemplateApi->get_sample: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



