# Reepay::DiscountApi

All URIs are relative to *https://api.reepay.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_discount**](DiscountApi.md#create_discount) | **POST** /v1/discount | Create discount
[**delete_discount**](DiscountApi.md#delete_discount) | **DELETE** /v1/discount/{handle} | Delete discount
[**get_discount**](DiscountApi.md#get_discount) | **GET** /v1/discount/{handle} | Get discount
[**get_discounts**](DiscountApi.md#get_discounts) | **GET** /v1/discount | Get list of discounts
[**undelete_discount**](DiscountApi.md#undelete_discount) | **POST** /v1/discount/{handle}/undelete | Undelete discount


# **create_discount**
> Discount create_discount(opts)

Create discount



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

api_instance = Reepay::DiscountApi.new

opts = { 
  body: Reepay::CreateDiscount.new # CreateDiscount | 
}

begin
  #Create discount
  result = api_instance.create_discount(opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling DiscountApi->create_discount: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateDiscount**](CreateDiscount.md)|  | [optional] 

### Return type

[**Discount**](Discount.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_discount**
> Discount delete_discount(handle)

Delete discount



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

api_instance = Reepay::DiscountApi.new

handle = "handle_example" # String | Discount handle


begin
  #Delete discount
  result = api_instance.delete_discount(handle)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling DiscountApi->delete_discount: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Discount handle | 

### Return type

[**Discount**](Discount.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_discount**
> Discount get_discount(handle)

Get discount



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

api_instance = Reepay::DiscountApi.new

handle = "handle_example" # String | Discount handle


begin
  #Get discount
  result = api_instance.get_discount(handle)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling DiscountApi->get_discount: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Discount handle | 

### Return type

[**Discount**](Discount.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_discounts**
> DiscountSearch get_discounts(page, size, search, sort)

Get list of discounts



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

api_instance = Reepay::DiscountApi.new

page = 1 # Integer | Page number to get

size = 20 # Integer | Page size to use

search = "search_example" # String | Optional search expression

sort = "sort_example" # String | Optional sorting expression


begin
  #Get list of discounts
  result = api_instance.get_discounts(page, size, search, sort)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling DiscountApi->get_discounts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page number to get | [default to 1]
 **size** | **Integer**| Page size to use | [default to 20]
 **search** | **String**| Optional search expression | 
 **sort** | **String**| Optional sorting expression | 

### Return type

[**DiscountSearch**](DiscountSearch.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **undelete_discount**
> Discount undelete_discount(handle)

Undelete discount



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

api_instance = Reepay::DiscountApi.new

handle = "handle_example" # String | Discount handle


begin
  #Undelete discount
  result = api_instance.undelete_discount(handle)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling DiscountApi->undelete_discount: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Discount handle | 

### Return type

[**Discount**](Discount.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



