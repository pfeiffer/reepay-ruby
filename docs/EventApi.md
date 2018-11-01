# Reepay::EventApi

All URIs are relative to *https://api.reepay.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_event**](EventApi.md#get_event) | **GET** /v1/event/{id} | Get event
[**get_events**](EventApi.md#get_events) | **GET** /v1/event | Get list of events


# **get_event**
> Event get_event(id)

Get event



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

api_instance = Reepay::EventApi.new

id = "id_example" # String | Event id


begin
  #Get event
  result = api_instance.get_event(id)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling EventApi->get_event: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Event id | 

### Return type

[**Event**](Event.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_events**
> EventList get_events(opts)

Get list of events



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

api_instance = Reepay::EventApi.new

opts = { 
  page: 1, # Integer | Page number to get
  size: 20, # Integer | Page size to use
  customer: "customer_example", # String | Customer handle
  subscription: "subscription_example", # String | Subscription handle
  invoice: "invoice_example" # String | Invoice id
}

begin
  #Get list of events
  result = api_instance.get_events(opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling EventApi->get_events: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page number to get | [optional] [default to 1]
 **size** | **Integer**| Page size to use | [optional] [default to 20]
 **customer** | **String**| Customer handle | [optional] 
 **subscription** | **String**| Subscription handle | [optional] 
 **invoice** | **String**| Invoice id | [optional] 

### Return type

[**EventList**](EventList.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



