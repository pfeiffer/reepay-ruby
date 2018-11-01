# Reepay::DunningPlanApi

All URIs are relative to *https://api.reepay.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_dunning_plan_json**](DunningPlanApi.md#create_dunning_plan_json) | **POST** /v1/dunning_plan | Create dunning plan
[**delete_dunning_plan**](DunningPlanApi.md#delete_dunning_plan) | **DELETE** /v1/dunning_plan/{handle} | Delete dunning plan
[**get_dunning_plan**](DunningPlanApi.md#get_dunning_plan) | **GET** /v1/dunning_plan/{handle} | Get dunning plan
[**get_dunning_plans**](DunningPlanApi.md#get_dunning_plans) | **GET** /v1/dunning_plan | Get list of dunning plans
[**update_json**](DunningPlanApi.md#update_json) | **PUT** /v1/dunning_plan/{handle} | Update dunning plan


# **create_dunning_plan_json**
> DunningPlan create_dunning_plan_json(opts)

Create dunning plan



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

api_instance = Reepay::DunningPlanApi.new

opts = { 
  body: Reepay::CreateDunningPlan.new # CreateDunningPlan | 
}

begin
  #Create dunning plan
  result = api_instance.create_dunning_plan_json(opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling DunningPlanApi->create_dunning_plan_json: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateDunningPlan**](CreateDunningPlan.md)|  | [optional] 

### Return type

[**DunningPlan**](DunningPlan.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_dunning_plan**
> DunningPlan delete_dunning_plan(handle)

Delete dunning plan



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

api_instance = Reepay::DunningPlanApi.new

handle = "handle_example" # String | Dunning plan handle


begin
  #Delete dunning plan
  result = api_instance.delete_dunning_plan(handle)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling DunningPlanApi->delete_dunning_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Dunning plan handle | 

### Return type

[**DunningPlan**](DunningPlan.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_dunning_plan**
> DunningPlan get_dunning_plan(handle)

Get dunning plan



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

api_instance = Reepay::DunningPlanApi.new

handle = "handle_example" # String | Dunning plan handle


begin
  #Get dunning plan
  result = api_instance.get_dunning_plan(handle)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling DunningPlanApi->get_dunning_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Dunning plan handle | 

### Return type

[**DunningPlan**](DunningPlan.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_dunning_plans**
> Array&lt;DunningPlan&gt; get_dunning_plans

Get list of dunning plans



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

api_instance = Reepay::DunningPlanApi.new

begin
  #Get list of dunning plans
  result = api_instance.get_dunning_plans
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling DunningPlanApi->get_dunning_plans: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;DunningPlan&gt;**](DunningPlan.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_json**
> DunningPlan update_json(handle, opts)

Update dunning plan



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

api_instance = Reepay::DunningPlanApi.new

handle = "handle_example" # String | Dunning plan handle

opts = { 
  body: Reepay::UpdateDunningPlan.new # UpdateDunningPlan | 
}

begin
  #Update dunning plan
  result = api_instance.update_json(handle, opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling DunningPlanApi->update_json: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Dunning plan handle | 
 **body** | [**UpdateDunningPlan**](UpdateDunningPlan.md)|  | [optional] 

### Return type

[**DunningPlan**](DunningPlan.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



