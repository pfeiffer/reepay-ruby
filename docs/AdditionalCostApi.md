# Reepay::AdditionalCostApi

All URIs are relative to *https://api.reepay.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_additional_cost**](AdditionalCostApi.md#cancel_additional_cost) | **POST** /v1/additional_cost/{handle}/cancel | Cancel pending additional cost
[**create_additional_cost_json**](AdditionalCostApi.md#create_additional_cost_json) | **POST** /v1/additional_cost | Create additional cost
[**get_additional_cost**](AdditionalCostApi.md#get_additional_cost) | **GET** /v1/additional_cost/{handle} | Get additional cost
[**get_additional_costs**](AdditionalCostApi.md#get_additional_costs) | **GET** /v1/additional_cost/subscription/{handle} | Get additional costs for subscription


# **cancel_additional_cost**
> AdditionalCost cancel_additional_cost(handle)

Cancel pending additional cost



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

api_instance = Reepay::AdditionalCostApi.new

handle = "handle_example" # String | Additonal cost handle


begin
  #Cancel pending additional cost
  result = api_instance.cancel_additional_cost(handle)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling AdditionalCostApi->cancel_additional_cost: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Additonal cost handle | 

### Return type

[**AdditionalCost**](AdditionalCost.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_additional_cost_json**
> AdditionalCost create_additional_cost_json(opts)

Create additional cost



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

api_instance = Reepay::AdditionalCostApi.new

opts = { 
  body: Reepay::CreateAdditionalCost.new # CreateAdditionalCost | 
}

begin
  #Create additional cost
  result = api_instance.create_additional_cost_json(opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling AdditionalCostApi->create_additional_cost_json: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateAdditionalCost**](CreateAdditionalCost.md)|  | [optional] 

### Return type

[**AdditionalCost**](AdditionalCost.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_additional_cost**
> AdditionalCost get_additional_cost(handle)

Get additional cost



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

api_instance = Reepay::AdditionalCostApi.new

handle = "handle_example" # String | Additonal cost handle


begin
  #Get additional cost
  result = api_instance.get_additional_cost(handle)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling AdditionalCostApi->get_additional_cost: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Additonal cost handle | 

### Return type

[**AdditionalCost**](AdditionalCost.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_additional_costs**
> Array&lt;AdditionalCost&gt; get_additional_costs(handle)

Get additional costs for subscription



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

api_instance = Reepay::AdditionalCostApi.new

handle = "handle_example" # String | Subscription handle


begin
  #Get additional costs for subscription
  result = api_instance.get_additional_costs(handle)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling AdditionalCostApi->get_additional_costs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Subscription handle | 

### Return type

[**Array&lt;AdditionalCost&gt;**](AdditionalCost.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



