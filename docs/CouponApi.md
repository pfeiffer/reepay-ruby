# Reepay::CouponApi

All URIs are relative to *https://api.reepay.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_coupon**](CouponApi.md#create_coupon) | **POST** /v1/coupon | Create coupon
[**delete_coupon**](CouponApi.md#delete_coupon) | **DELETE** /v1/coupon/{handle} | Delete coupon
[**expire_coupon**](CouponApi.md#expire_coupon) | **POST** /v1/coupon/{handle}/expire | Expire coupon
[**get_coupon**](CouponApi.md#get_coupon) | **GET** /v1/coupon/{handle} | Get coupon
[**get_coupons**](CouponApi.md#get_coupons) | **GET** /v1/coupon | Get list of coupons
[**update_coupon**](CouponApi.md#update_coupon) | **PUT** /v1/coupon/{handle} | Update coupon
[**validate_code**](CouponApi.md#validate_code) | **GET** /v1/coupon/code/validate | Validate coupon


# **create_coupon**
> Coupon create_coupon(opts)

Create coupon



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

api_instance = Reepay::CouponApi.new

opts = { 
  body: Reepay::CreateCoupon.new # CreateCoupon | 
}

begin
  #Create coupon
  result = api_instance.create_coupon(opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling CouponApi->create_coupon: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateCoupon**](CreateCoupon.md)|  | [optional] 

### Return type

[**Coupon**](Coupon.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_coupon**
> Coupon delete_coupon(handle)

Delete coupon



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

api_instance = Reepay::CouponApi.new

handle = "handle_example" # String | Coupon handle


begin
  #Delete coupon
  result = api_instance.delete_coupon(handle)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling CouponApi->delete_coupon: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Coupon handle | 

### Return type

[**Coupon**](Coupon.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **expire_coupon**
> Coupon expire_coupon(handle)

Expire coupon



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

api_instance = Reepay::CouponApi.new

handle = "handle_example" # String | Coupon handle


begin
  #Expire coupon
  result = api_instance.expire_coupon(handle)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling CouponApi->expire_coupon: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Coupon handle | 

### Return type

[**Coupon**](Coupon.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_coupon**
> Coupon get_coupon(handle)

Get coupon



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

api_instance = Reepay::CouponApi.new

handle = "handle_example" # String | Coupon handle


begin
  #Get coupon
  result = api_instance.get_coupon(handle)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling CouponApi->get_coupon: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Coupon handle | 

### Return type

[**Coupon**](Coupon.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_coupons**
> CouponSearch get_coupons(page, size, search, sort)

Get list of coupons



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

api_instance = Reepay::CouponApi.new

page = 1 # Integer | Page number to get

size = 20 # Integer | Page size to use

search = "search_example" # String | Optional search expression

sort = "sort_example" # String | Optional sorting expression


begin
  #Get list of coupons
  result = api_instance.get_coupons(page, size, search, sort)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling CouponApi->get_coupons: #{e}"
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

[**CouponSearch**](CouponSearch.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_coupon**
> Coupon update_coupon(handle, opts)

Update coupon



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

api_instance = Reepay::CouponApi.new

handle = "handle_example" # String | Coupon handle

opts = { 
  body: Reepay::UpdateCoupon.new # UpdateCoupon | 
}

begin
  #Update coupon
  result = api_instance.update_coupon(handle, opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling CouponApi->update_coupon: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Coupon handle | 
 **body** | [**UpdateCoupon**](UpdateCoupon.md)|  | [optional] 

### Return type

[**Coupon**](Coupon.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **validate_code**
> Coupon validate_code(code, opts)

Validate coupon



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

api_instance = Reepay::CouponApi.new

code = "code_example" # String | Coupon code

opts = { 
  plan: "plan_example", # String | Optional plan to validate against
  customer: "customer_example" # String | Optional customer to validate against
}

begin
  #Validate coupon
  result = api_instance.validate_code(code, opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling CouponApi->validate_code: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| Coupon code | 
 **plan** | **String**| Optional plan to validate against | [optional] 
 **customer** | **String**| Optional customer to validate against | [optional] 

### Return type

[**Coupon**](Coupon.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



