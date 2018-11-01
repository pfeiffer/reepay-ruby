# Reepay::WebhookApi

All URIs are relative to *https://api.reepay.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**disable_webhooks**](WebhookApi.md#disable_webhooks) | **POST** /v1/webhook/disable | Disable webhooks
[**get_webhook**](WebhookApi.md#get_webhook) | **GET** /v1/webhook/{id} | Get webhooks
[**get_webhook_requests**](WebhookApi.md#get_webhook_requests) | **GET** /v1/webhook/{id}/request | Get webhook requests
[**get_webhooks**](WebhookApi.md#get_webhooks) | **GET** /v1/webhook | Get list of webhooks
[**resend_json**](WebhookApi.md#resend_json) | **POST** /v1/webhook/resend | Re-send webhooks
[**update_webhooks**](WebhookApi.md#update_webhooks) | **POST** /v1/webhook/update | Update and resend webhooks


# **disable_webhooks**
> Array&lt;Webhook&gt; disable_webhooks(opts)

Disable webhooks



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

api_instance = Reepay::WebhookApi.new

opts = { 
  body: Reepay::WebhookDisableRequest.new # WebhookDisableRequest | 
}

begin
  #Disable webhooks
  result = api_instance.disable_webhooks(opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling WebhookApi->disable_webhooks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**WebhookDisableRequest**](WebhookDisableRequest.md)|  | [optional] 

### Return type

[**Array&lt;Webhook&gt;**](Webhook.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_webhook**
> Array&lt;Webhook&gt; get_webhook(id)

Get webhooks



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

api_instance = Reepay::WebhookApi.new

id = "id_example" # String | Webhook id or event id


begin
  #Get webhooks
  result = api_instance.get_webhook(id)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling WebhookApi->get_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Webhook id or event id | 

### Return type

[**Array&lt;Webhook&gt;**](Webhook.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_webhook_requests**
> Array&lt;WebhookRequest&gt; get_webhook_requests(id)

Get webhook requests



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

api_instance = Reepay::WebhookApi.new

id = "id_example" # String | Webhook id


begin
  #Get webhook requests
  result = api_instance.get_webhook_requests(id)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling WebhookApi->get_webhook_requests: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Webhook id | 

### Return type

[**Array&lt;WebhookRequest&gt;**](WebhookRequest.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_webhooks**
> Array&lt;Webhook&gt; get_webhooks(created_before, opts)

Get list of webhooks



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

api_instance = Reepay::WebhookApi.new

created_before = "\"2015-06-14T08:12:19.558+00:00\"" # String | Get webhooks created before this date, in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. Use last created date as filter for next page.

opts = { 
  size: 100, # Integer | Page size. A maximum of 100 is allowed.
  state: "\"pending\"" # String | Optional state to filter on, one of the following: `pending`, `disabled`, `failed`, `completed`
}

begin
  #Get list of webhooks
  result = api_instance.get_webhooks(created_before, opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling WebhookApi->get_webhooks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **created_before** | **String**| Get webhooks created before this date, in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. Use last created date as filter for next page. | 
 **size** | **Integer**| Page size. A maximum of 100 is allowed. | [optional] [default to 100]
 **state** | **String**| Optional state to filter on, one of the following: &#x60;pending&#x60;, &#x60;disabled&#x60;, &#x60;failed&#x60;, &#x60;completed&#x60; | [optional] 

### Return type

[**Array&lt;Webhook&gt;**](Webhook.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **resend_json**
> Array&lt;Webhook&gt; resend_json(opts)

Re-send webhooks



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

api_instance = Reepay::WebhookApi.new

opts = { 
  body: Reepay::WebhookResendRequest.new # WebhookResendRequest | 
}

begin
  #Re-send webhooks
  result = api_instance.resend_json(opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling WebhookApi->resend_json: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**WebhookResendRequest**](WebhookResendRequest.md)|  | [optional] 

### Return type

[**Array&lt;Webhook&gt;**](Webhook.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_webhooks**
> Array&lt;Webhook&gt; update_webhooks(opts)

Update and resend webhooks



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

api_instance = Reepay::WebhookApi.new

opts = { 
  body: Reepay::WebhookUpdateRequest.new # WebhookUpdateRequest | 
}

begin
  #Update and resend webhooks
  result = api_instance.update_webhooks(opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling WebhookApi->update_webhooks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**WebhookUpdateRequest**](WebhookUpdateRequest.md)|  | [optional] 

### Return type

[**Array&lt;Webhook&gt;**](Webhook.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



