# Reepay::InvoiceApi

All URIs are relative to *https://api.reepay.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_all_dunning_pending**](InvoiceApi.md#cancel_all_dunning_pending) | **POST** /v1/invoice/cancel_all_dunning_pending/subscription/{handle} | Cancel all dunning and pending
[**cancel_invoice**](InvoiceApi.md#cancel_invoice) | **POST** /v1/invoice/{id}/cancel | Cancel invoice
[**cancel_settle_later**](InvoiceApi.md#cancel_settle_later) | **POST** /v1/invoice/{id}/settle/cancel | Cancel settle later
[**cancel_transaction**](InvoiceApi.md#cancel_transaction) | **POST** /v1/invoice/{id}/transaction/{transaction}/cancel | Cancel transaction
[**create_or_update_billing_address**](InvoiceApi.md#create_or_update_billing_address) | **PUT** /v1/invoice/{id}/billing_address | Create or update invoice billing address
[**create_or_update_shipping_address**](InvoiceApi.md#create_or_update_shipping_address) | **PUT** /v1/invoice/{id}/shipping_address | Create or update invoice shipping address
[**delete_billing_address**](InvoiceApi.md#delete_billing_address) | **DELETE** /v1/invoice/{id}/billing_address | Delete invoice billing address
[**delete_shipping_address**](InvoiceApi.md#delete_shipping_address) | **DELETE** /v1/invoice/{id}/shipping_address | Delete invoice shipping address
[**detach_from_subscription**](InvoiceApi.md#detach_from_subscription) | **POST** /v1/invoice/{id}/detach | Detach from subscription
[**get_invoice**](InvoiceApi.md#get_invoice) | **GET** /v1/invoice/{id} | Get invoice
[**get_invoices**](InvoiceApi.md#get_invoices) | **GET** /v1/invoice | Get list of invoices
[**manual_settle**](InvoiceApi.md#manual_settle) | **POST** /v1/invoice/{id}/manual_settle | Manual settle
[**reactivate_invoice**](InvoiceApi.md#reactivate_invoice) | **POST** /v1/invoice/{id}/reactivate | Reactivate invoice
[**settle**](InvoiceApi.md#settle) | **POST** /v1/invoice/{id}/settle | Settle
[**transaction**](InvoiceApi.md#transaction) | **GET** /v1/invoice/{id}/transaction/{transaction} | Get transaction
[**transaction_details**](InvoiceApi.md#transaction_details) | **GET** /v1/invoice/{id}/transaction/{transaction}/details | Get transaction details
[**transaction_list**](InvoiceApi.md#transaction_list) | **GET** /v1/invoice/{id}/transaction | Get transaction list


# **cancel_all_dunning_pending**
> Array&lt;Invoice&gt; cancel_all_dunning_pending(handle)

Cancel all dunning and pending



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

api_instance = Reepay::InvoiceApi.new

handle = "handle_example" # String | Subscriptiom handle


begin
  #Cancel all dunning and pending
  result = api_instance.cancel_all_dunning_pending(handle)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling InvoiceApi->cancel_all_dunning_pending: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Subscriptiom handle | 

### Return type

[**Array&lt;Invoice&gt;**](Invoice.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **cancel_invoice**
> Invoice cancel_invoice(id)

Cancel invoice



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

api_instance = Reepay::InvoiceApi.new

id = "id_example" # String | Invoice id or handle


begin
  #Cancel invoice
  result = api_instance.cancel_invoice(id)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling InvoiceApi->cancel_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Invoice id or handle | 

### Return type

[**Invoice**](Invoice.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **cancel_settle_later**
> Invoice cancel_settle_later(id)

Cancel settle later



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

api_instance = Reepay::InvoiceApi.new

id = "id_example" # String | Invoice id or handle


begin
  #Cancel settle later
  result = api_instance.cancel_settle_later(id)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling InvoiceApi->cancel_settle_later: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Invoice id or handle | 

### Return type

[**Invoice**](Invoice.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cancel_transaction**
> Transaction cancel_transaction(id, transaction)

Cancel transaction



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

api_instance = Reepay::InvoiceApi.new

id = "id_example" # String | Invoice id or handle

transaction = "transaction_example" # String | Transaction id


begin
  #Cancel transaction
  result = api_instance.cancel_transaction(id, transaction)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling InvoiceApi->cancel_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Invoice id or handle | 
 **transaction** | **String**| Transaction id | 

### Return type

[**Transaction**](Transaction.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_or_update_billing_address**
> Invoice create_or_update_billing_address(id, opts)

Create or update invoice billing address



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

api_instance = Reepay::InvoiceApi.new

id = "id_example" # String | Invoice id or handle

opts = { 
  body: Reepay::InvoiceBillingAddress.new # InvoiceBillingAddress | 
}

begin
  #Create or update invoice billing address
  result = api_instance.create_or_update_billing_address(id, opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling InvoiceApi->create_or_update_billing_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Invoice id or handle | 
 **body** | [**InvoiceBillingAddress**](InvoiceBillingAddress.md)|  | [optional] 

### Return type

[**Invoice**](Invoice.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_or_update_shipping_address**
> Invoice create_or_update_shipping_address(id, opts)

Create or update invoice shipping address



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

api_instance = Reepay::InvoiceApi.new

id = "id_example" # String | Invoice id or handle

opts = { 
  body: Reepay::InvoiceShippingAddress.new # InvoiceShippingAddress | 
}

begin
  #Create or update invoice shipping address
  result = api_instance.create_or_update_shipping_address(id, opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling InvoiceApi->create_or_update_shipping_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Invoice id or handle | 
 **body** | [**InvoiceShippingAddress**](InvoiceShippingAddress.md)|  | [optional] 

### Return type

[**Invoice**](Invoice.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_billing_address**
> Invoice delete_billing_address(id)

Delete invoice billing address



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

api_instance = Reepay::InvoiceApi.new

id = "id_example" # String | Invoice id or handle


begin
  #Delete invoice billing address
  result = api_instance.delete_billing_address(id)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling InvoiceApi->delete_billing_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Invoice id or handle | 

### Return type

[**Invoice**](Invoice.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_shipping_address**
> Invoice delete_shipping_address(id)

Delete invoice shipping address



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

api_instance = Reepay::InvoiceApi.new

id = "id_example" # String | Invoice id or handle


begin
  #Delete invoice shipping address
  result = api_instance.delete_shipping_address(id)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling InvoiceApi->delete_shipping_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Invoice id or handle | 

### Return type

[**Invoice**](Invoice.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **detach_from_subscription**
> Invoice detach_from_subscription(id)

Detach from subscription



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

api_instance = Reepay::InvoiceApi.new

id = "id_example" # String | Invoice id or handle


begin
  #Detach from subscription
  result = api_instance.detach_from_subscription(id)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling InvoiceApi->detach_from_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Invoice id or handle | 

### Return type

[**Invoice**](Invoice.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_invoice**
> Invoice get_invoice(id)

Get invoice



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

api_instance = Reepay::InvoiceApi.new

id = "id_example" # String | Invoice id or handle


begin
  #Get invoice
  result = api_instance.get_invoice(id)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling InvoiceApi->get_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Invoice id or handle | 

### Return type

[**Invoice**](Invoice.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_invoices**
> InvoiceSearch get_invoices(opts)

Get list of invoices



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

api_instance = Reepay::InvoiceApi.new

opts = { 
  page: 1, # Integer | Page number to get
  size: 20, # Integer | Page size to use
  search: "search_example", # String | Optional search expression
  sort: "sort_example" # String | Optional sorting expression
}

begin
  #Get list of invoices
  result = api_instance.get_invoices(opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling InvoiceApi->get_invoices: #{e}"
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

[**InvoiceSearch**](InvoiceSearch.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **manual_settle**
> Invoice manual_settle(id, opts)

Manual settle



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

api_instance = Reepay::InvoiceApi.new

id = "id_example" # String | Invoice id or handle

opts = { 
  body: Reepay::ManualSettleTransfer.new # ManualSettleTransfer | 
}

begin
  #Manual settle
  result = api_instance.manual_settle(id, opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling InvoiceApi->manual_settle: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Invoice id or handle | 
 **body** | [**ManualSettleTransfer**](ManualSettleTransfer.md)|  | [optional] 

### Return type

[**Invoice**](Invoice.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **reactivate_invoice**
> Invoice reactivate_invoice(id)

Reactivate invoice



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

api_instance = Reepay::InvoiceApi.new

id = "id_example" # String | Invoice id or handle


begin
  #Reactivate invoice
  result = api_instance.reactivate_invoice(id)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling InvoiceApi->reactivate_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Invoice id or handle | 

### Return type

[**Invoice**](Invoice.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **settle**
> Invoice settle(id, opts)

Settle



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

api_instance = Reepay::InvoiceApi.new

id = "id_example" # String | Invoice id or handle

opts = { 
  body: Reepay::Settle.new # Settle | 
}

begin
  #Settle
  result = api_instance.settle(id, opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling InvoiceApi->settle: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Invoice id or handle | 
 **body** | [**Settle**](Settle.md)|  | [optional] 

### Return type

[**Invoice**](Invoice.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **transaction**
> Transaction transaction(id, transaction)

Get transaction



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

api_instance = Reepay::InvoiceApi.new

id = "id_example" # String | Invoice id or handle

transaction = "transaction_example" # String | Transaction id


begin
  #Get transaction
  result = api_instance.transaction(id, transaction)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling InvoiceApi->transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Invoice id or handle | 
 **transaction** | **String**| Transaction id | 

### Return type

[**Transaction**](Transaction.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **transaction_details**
> Hash&lt;String, Object&gt; transaction_details(id, transaction)

Get transaction details



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

api_instance = Reepay::InvoiceApi.new

id = "id_example" # String | Invoice id or handle

transaction = "transaction_example" # String | Transaction id


begin
  #Get transaction details
  result = api_instance.transaction_details(id, transaction)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling InvoiceApi->transaction_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Invoice id or handle | 
 **transaction** | **String**| Transaction id | 

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **transaction_list**
> TransactionSearch transaction_list(id, opts)

Get transaction list



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

api_instance = Reepay::InvoiceApi.new

id = "id_example" # String | Invoice id or handle

opts = { 
  page: 1, # Integer | Page number to get
  size: 20, # Integer | Page size to use
  search: "search_example", # String | Optional search expression
  sort: "sort_example" # String | Optional sorting expression
}

begin
  #Get transaction list
  result = api_instance.transaction_list(id, opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling InvoiceApi->transaction_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Invoice id or handle | 
 **page** | **Integer**| Page number to get | [optional] [default to 1]
 **size** | **Integer**| Page size to use | [optional] [default to 20]
 **search** | **String**| Optional search expression | [optional] 
 **sort** | **String**| Optional sorting expression | [optional] 

### Return type

[**TransactionSearch**](TransactionSearch.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



