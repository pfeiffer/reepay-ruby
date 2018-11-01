# Reepay::AddOnApi

All URIs are relative to *https://api.reepay.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_add_on**](AddOnApi.md#create_add_on) | **POST** /v1/add_on | Create add-on
[**delete_add_on**](AddOnApi.md#delete_add_on) | **DELETE** /v1/add_on/{handle} | Delete add-on
[**get_add_on**](AddOnApi.md#get_add_on) | **GET** /v1/add_on/{handle} | Get add-on
[**get_add_ons**](AddOnApi.md#get_add_ons) | **GET** /v1/add_on | Get list of add-ons
[**undelete_add_on**](AddOnApi.md#undelete_add_on) | **POST** /v1/add_on/{handle}/undelete | Un-delete add-on
[**update_add_on**](AddOnApi.md#update_add_on) | **PUT** /v1/add_on/{handle} | Update add-on


# **create_add_on**
> AddOn create_add_on(opts)

Create add-on



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

api_instance = Reepay::AddOnApi.new

opts = { 
  body: Reepay::CreateAddOn.new # CreateAddOn | 
}

begin
  #Create add-on
  result = api_instance.create_add_on(opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling AddOnApi->create_add_on: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateAddOn**](CreateAddOn.md)|  | [optional] 

### Return type

[**AddOn**](AddOn.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_add_on**
> AddOn delete_add_on(handle)

Delete add-on



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

api_instance = Reepay::AddOnApi.new

handle = "handle_example" # String | Add-on handle


begin
  #Delete add-on
  result = api_instance.delete_add_on(handle)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling AddOnApi->delete_add_on: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Add-on handle | 

### Return type

[**AddOn**](AddOn.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_add_on**
> AddOn get_add_on(handle)

Get add-on



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

api_instance = Reepay::AddOnApi.new

handle = "handle_example" # String | Add-on handle


begin
  #Get add-on
  result = api_instance.get_add_on(handle)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling AddOnApi->get_add_on: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Add-on handle | 

### Return type

[**AddOn**](AddOn.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_add_ons**
> AddOnSearch get_add_ons(opts)

Get list of add-ons



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

api_instance = Reepay::AddOnApi.new

opts = { 
  page: 1, # Integer | Page number to get
  size: 20, # Integer | Page size to use
  search: "search_example", # String | Optional search expression
  sort: "sort_example" # String | Optional sorting expression
}

begin
  #Get list of add-ons
  result = api_instance.get_add_ons(opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling AddOnApi->get_add_ons: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page number to get | [optional] [default to 1]
 **size** | **Integer**| Page size to use | [optional] [default to 20]
 **search** | **String**| Optional search expression | [optional] 
 **sort** | **String**| Optional sorting expression | [optional] 

### Return type

[**AddOnSearch**](AddOnSearch.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **undelete_add_on**
> AddOn undelete_add_on(handle)

Un-delete add-on



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

api_instance = Reepay::AddOnApi.new

handle = "handle_example" # String | Add-on handle


begin
  #Un-delete add-on
  result = api_instance.undelete_add_on(handle)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling AddOnApi->undelete_add_on: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Add-on handle | 

### Return type

[**AddOn**](AddOn.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_add_on**
> AddOn update_add_on(handle, opts)

Update add-on



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

api_instance = Reepay::AddOnApi.new

handle = "handle_example" # String | Add-on handle

opts = { 
  body: Reepay::UpdateAddOn.new # UpdateAddOn | 
}

begin
  #Update add-on
  result = api_instance.update_add_on(handle, opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling AddOnApi->update_add_on: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Add-on handle | 
 **body** | [**UpdateAddOn**](UpdateAddOn.md)|  | [optional] 

### Return type

[**AddOn**](AddOn.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



