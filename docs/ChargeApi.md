# Reepay::ChargeApi

All URIs are relative to *https://api.reepay.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_charge**](ChargeApi.md#cancel_charge) | **POST** /v1/charge/{handle}/cancel | Cancel charge
[**create_charge**](ChargeApi.md#create_charge) | **POST** /v1/charge | Create charge
[**get_charge**](ChargeApi.md#get_charge) | **GET** /v1/charge/{handle} | Get charge
[**get_charges**](ChargeApi.md#get_charges) | **GET** /v1/charge | Get charges
[**prepare_charge**](ChargeApi.md#prepare_charge) | **POST** /v1/charge/prepare | Prepare charge
[**settle_charge**](ChargeApi.md#settle_charge) | **POST** /v1/charge/{handle}/settle | Settle charge


# **cancel_charge**
> Charge cancel_charge(handle)

Cancel charge



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

api_instance = Reepay::ChargeApi.new

handle = "handle_example" # String | Charge handle


begin
  #Cancel charge
  result = api_instance.cancel_charge(handle)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling ChargeApi->cancel_charge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Charge handle | 

### Return type

[**Charge**](Charge.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_charge**
> Charge create_charge(opts)

Create charge



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

api_instance = Reepay::ChargeApi.new

opts = { 
  body: Reepay::CreateCharge.new # CreateCharge | 
}

begin
  #Create charge
  result = api_instance.create_charge(opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling ChargeApi->create_charge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateCharge**](CreateCharge.md)|  | [optional] 

### Return type

[**Charge**](Charge.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_charge**
> Charge get_charge(handle)

Get charge



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

api_instance = Reepay::ChargeApi.new

handle = "handle_example" # String | Charge handle


begin
  #Get charge
  result = api_instance.get_charge(handle)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling ChargeApi->get_charge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Charge handle | 

### Return type

[**Charge**](Charge.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_charges**
> ChargeSearch get_charges(opts)

Get charges



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

api_instance = Reepay::ChargeApi.new

opts = { 
  page: 1, # Integer | Page number to get
  size: 20, # Integer | Page size to use
  search: "search_example", # String | Optional search expression
  sort: "sort_example" # String | Optional sorting expression
}

begin
  #Get charges
  result = api_instance.get_charges(opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling ChargeApi->get_charges: #{e}"
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

[**ChargeSearch**](ChargeSearch.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **prepare_charge**
> Charge prepare_charge(opts)

Prepare charge



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

api_instance = Reepay::ChargeApi.new

opts = { 
  body: Reepay::PrepareChargeDto.new # PrepareChargeDto | 
}

begin
  #Prepare charge
  result = api_instance.prepare_charge(opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling ChargeApi->prepare_charge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PrepareChargeDto**](PrepareChargeDto.md)|  | [optional] 

### Return type

[**Charge**](Charge.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **settle_charge**
> Charge settle_charge(handle, opts)

Settle charge



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

api_instance = Reepay::ChargeApi.new

handle = "handle_example" # String | Charge handle

opts = { 
  body: Reepay::SettleCharge.new # SettleCharge | 
}

begin
  #Settle charge
  result = api_instance.settle_charge(handle, opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling ChargeApi->settle_charge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Charge handle | 
 **body** | [**SettleCharge**](SettleCharge.md)|  | [optional] 

### Return type

[**Charge**](Charge.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



