# Reepay::PlanApi

All URIs are relative to *https://api.reepay.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_plan_json**](PlanApi.md#create_plan_json) | **POST** /v1/plan | Create plan
[**delete_plan**](PlanApi.md#delete_plan) | **DELETE** /v1/plan/{handle} | Delete plan
[**get_current_plan**](PlanApi.md#get_current_plan) | **GET** /v1/plan/{handle}/current | Get plan
[**get_plan**](PlanApi.md#get_plan) | **GET** /v1/plan/{handle}/{version} | Get plan version
[**get_plans**](PlanApi.md#get_plans) | **GET** /v1/plan/{handle} | Get list of plan versions
[**get_plans_list**](PlanApi.md#get_plans_list) | **GET** /v1/plan | Get list of plans
[**supersede_plan_json**](PlanApi.md#supersede_plan_json) | **POST** /v1/plan/{handle} | Supersede plan
[**update_plan_json**](PlanApi.md#update_plan_json) | **PUT** /v1/plan/{handle} | Update plan


# **create_plan_json**
> Plan create_plan_json(opts)

Create plan



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

api_instance = Reepay::PlanApi.new

opts = { 
  body: Reepay::CreateSubscriptionPlan.new # CreateSubscriptionPlan | 
}

begin
  #Create plan
  result = api_instance.create_plan_json(opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling PlanApi->create_plan_json: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateSubscriptionPlan**](CreateSubscriptionPlan.md)|  | [optional] 

### Return type

[**Plan**](Plan.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_plan**
> Plan delete_plan(handle)

Delete plan



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

api_instance = Reepay::PlanApi.new

handle = "handle_example" # String | Subscription plan handle


begin
  #Delete plan
  result = api_instance.delete_plan(handle)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling PlanApi->delete_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Subscription plan handle | 

### Return type

[**Plan**](Plan.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_current_plan**
> Plan get_current_plan(handle)

Get plan



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

api_instance = Reepay::PlanApi.new

handle = "handle_example" # String | Plan handle


begin
  #Get plan
  result = api_instance.get_current_plan(handle)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling PlanApi->get_current_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Plan handle | 

### Return type

[**Plan**](Plan.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_plan**
> Plan get_plan(handle, version)

Get plan version



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

api_instance = Reepay::PlanApi.new

handle = "handle_example" # String | Plan handle

version = 56 # Integer | Plan version


begin
  #Get plan version
  result = api_instance.get_plan(handle, version)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling PlanApi->get_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Plan handle | 
 **version** | **Integer**| Plan version | 

### Return type

[**Plan**](Plan.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_plans**
> Array&lt;Plan&gt; get_plans(handle)

Get list of plan versions



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

api_instance = Reepay::PlanApi.new

handle = "handle_example" # String | Plan handle


begin
  #Get list of plan versions
  result = api_instance.get_plans(handle)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling PlanApi->get_plans: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Plan handle | 

### Return type

[**Array&lt;Plan&gt;**](Plan.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_plans_list**
> Array&lt;Plan&gt; get_plans_list(opts)

Get list of plans



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

api_instance = Reepay::PlanApi.new

opts = { 
  only_active: false # BOOLEAN | Get only active
}

begin
  #Get list of plans
  result = api_instance.get_plans_list(opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling PlanApi->get_plans_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **only_active** | **BOOLEAN**| Get only active | [optional] [default to false]

### Return type

[**Array&lt;Plan&gt;**](Plan.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **supersede_plan_json**
> Plan supersede_plan_json(handle, opts)

Supersede plan



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

api_instance = Reepay::PlanApi.new

handle = "handle_example" # String | Plan handle

opts = { 
  body: Reepay::SupersedeSubscriptionPlan.new # SupersedeSubscriptionPlan | 
}

begin
  #Supersede plan
  result = api_instance.supersede_plan_json(handle, opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling PlanApi->supersede_plan_json: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Plan handle | 
 **body** | [**SupersedeSubscriptionPlan**](SupersedeSubscriptionPlan.md)|  | [optional] 

### Return type

[**Plan**](Plan.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_plan_json**
> Plan update_plan_json(handle, opts)

Update plan



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

api_instance = Reepay::PlanApi.new

handle = "handle_example" # String | Subscription handle

opts = { 
  body: Reepay::UpdateSubscriptionPlan.new # UpdateSubscriptionPlan | 
}

begin
  #Update plan
  result = api_instance.update_plan_json(handle, opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling PlanApi->update_plan_json: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Subscription handle | 
 **body** | [**UpdateSubscriptionPlan**](UpdateSubscriptionPlan.md)|  | [optional] 

### Return type

[**Plan**](Plan.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



