# Reepay::CustomerApi

All URIs are relative to *https://api.reepay.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activate_payment_method**](CustomerApi.md#activate_payment_method) | **POST** /v1/customer/{handle}/payment_method/{method_id}/activate | Activate payment method
[**add_card_json**](CustomerApi.md#add_card_json) | **POST** /v1/customer/{handle}/payment_method/card | Add card payment method
[**create_customer_invoice**](CustomerApi.md#create_customer_invoice) | **POST** /v1/customer/{handle}/invoice | Create invoice for customer
[**create_customer_json**](CustomerApi.md#create_customer_json) | **POST** /v1/customer | Create customer
[**create_customer_note_json**](CustomerApi.md#create_customer_note_json) | **POST** /v1/customer/{handle}/note | Create customer note
[**delete_customer**](CustomerApi.md#delete_customer) | **DELETE** /v1/customer/{handle} | Delete customer
[**get_card**](CustomerApi.md#get_card) | **GET** /v1/customer/{handle}/payment_method/card/{id} | Get card
[**get_card_details**](CustomerApi.md#get_card_details) | **GET** /v1/customer/{handle}/payment_method/card/{id}/details | Get gateway card details
[**get_customer**](CustomerApi.md#get_customer) | **GET** /v1/customer/{handle} | Get customer
[**get_customer_notes**](CustomerApi.md#get_customer_notes) | **GET** /v1/customer/{handle}/note | Get customer notes
[**get_customer_payment_methods**](CustomerApi.md#get_customer_payment_methods) | **GET** /v1/customer/{handle}/payment_method | Get payment methods
[**get_customers**](CustomerApi.md#get_customers) | **GET** /v1/customer | Get list of customers
[**import_card_json**](CustomerApi.md#import_card_json) | **POST** /v1/customer/{handle}/payment_method/card_import | Import card payment method
[**inactivate_payment_method**](CustomerApi.md#inactivate_payment_method) | **POST** /v1/customer/{handle}/payment_method/{method_id}/inactivate | Inactivate payment method
[**reactivate_card**](CustomerApi.md#reactivate_card) | **POST** /v1/customer/{handle}/payment_method/{card_id}/card_reactivate | Reactivate failed card
[**update_customer_json**](CustomerApi.md#update_customer_json) | **PUT** /v1/customer/{handle} | Update customer


# **activate_payment_method**
> PaymentMethods activate_payment_method(handle, method_id)

Activate payment method



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

api_instance = Reepay::CustomerApi.new

handle = "handle_example" # String | Customer handle

method_id = "method_id_example" # String | Payment method id


begin
  #Activate payment method
  result = api_instance.activate_payment_method(handle, method_id)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling CustomerApi->activate_payment_method: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Customer handle | 
 **method_id** | **String**| Payment method id | 

### Return type

[**PaymentMethods**](PaymentMethods.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **add_card_json**
> Card add_card_json(handle, opts)

Add card payment method



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

api_instance = Reepay::CustomerApi.new

handle = "handle_example" # String | Customer handle

opts = { 
  body: Reepay::CardToken.new # CardToken | 
}

begin
  #Add card payment method
  result = api_instance.add_card_json(handle, opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling CustomerApi->add_card_json: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Customer handle | 
 **body** | [**CardToken**](CardToken.md)|  | [optional] 

### Return type

[**Card**](Card.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_customer_invoice**
> Invoice create_customer_invoice(handle, opts)

Create invoice for customer



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

api_instance = Reepay::CustomerApi.new

handle = "handle_example" # String | Customer handle

opts = { 
  body: Reepay::CreateCustomerInvoice.new # CreateCustomerInvoice | 
}

begin
  #Create invoice for customer
  result = api_instance.create_customer_invoice(handle, opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling CustomerApi->create_customer_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Customer handle | 
 **body** | [**CreateCustomerInvoice**](CreateCustomerInvoice.md)|  | [optional] 

### Return type

[**Invoice**](Invoice.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_customer_json**
> Customer create_customer_json(opts)

Create customer



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

api_instance = Reepay::CustomerApi.new

opts = { 
  body: Reepay::CreateCustomer.new # CreateCustomer | 
}

begin
  #Create customer
  result = api_instance.create_customer_json(opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling CustomerApi->create_customer_json: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateCustomer**](CreateCustomer.md)|  | [optional] 

### Return type

[**Customer**](Customer.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_customer_note_json**
> CustomerNote create_customer_note_json(handle, opts)

Create customer note



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

api_instance = Reepay::CustomerApi.new

handle = "handle_example" # String | 

opts = { 
  body: Reepay::CreateCustomerNote.new # CreateCustomerNote | 
}

begin
  #Create customer note
  result = api_instance.create_customer_note_json(handle, opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling CustomerApi->create_customer_note_json: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**|  | 
 **body** | [**CreateCustomerNote**](CreateCustomerNote.md)|  | [optional] 

### Return type

[**CustomerNote**](CustomerNote.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_customer**
> Customer delete_customer(handle)

Delete customer



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

api_instance = Reepay::CustomerApi.new

handle = "handle_example" # String | Customer handle


begin
  #Delete customer
  result = api_instance.delete_customer(handle)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling CustomerApi->delete_customer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Customer handle | 

### Return type

[**Customer**](Customer.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_card**
> Card get_card(handle, id)

Get card



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

api_instance = Reepay::CustomerApi.new

handle = "handle_example" # String | Customer handle

id = "id_example" # String | Card id


begin
  #Get card
  result = api_instance.get_card(handle, id)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling CustomerApi->get_card: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Customer handle | 
 **id** | **String**| Card id | 

### Return type

[**Card**](Card.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_card_details**
> Hash&lt;String, Object&gt; get_card_details(handle, id)

Get gateway card details



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

api_instance = Reepay::CustomerApi.new

handle = "handle_example" # String | Customer handle

id = "id_example" # String | Card id


begin
  #Get gateway card details
  result = api_instance.get_card_details(handle, id)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling CustomerApi->get_card_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Customer handle | 
 **id** | **String**| Card id | 

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_customer**
> Customer get_customer(handle)

Get customer



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

api_instance = Reepay::CustomerApi.new

handle = "handle_example" # String | Customer handle


begin
  #Get customer
  result = api_instance.get_customer(handle)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling CustomerApi->get_customer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Customer handle | 

### Return type

[**Customer**](Customer.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_customer_notes**
> Array&lt;CustomerNote&gt; get_customer_notes(handle)

Get customer notes



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

api_instance = Reepay::CustomerApi.new

handle = "handle_example" # String | Customer handle


begin
  #Get customer notes
  result = api_instance.get_customer_notes(handle)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling CustomerApi->get_customer_notes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Customer handle | 

### Return type

[**Array&lt;CustomerNote&gt;**](CustomerNote.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_customer_payment_methods**
> PaymentMethods get_customer_payment_methods(handle, opts)

Get payment methods



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

api_instance = Reepay::CustomerApi.new

handle = "handle_example" # String | Customer handle

opts = { 
  only_active: false # BOOLEAN | Get only active
}

begin
  #Get payment methods
  result = api_instance.get_customer_payment_methods(handle, opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling CustomerApi->get_customer_payment_methods: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Customer handle | 
 **only_active** | **BOOLEAN**| Get only active | [optional] [default to false]

### Return type

[**PaymentMethods**](PaymentMethods.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_customers**
> CustomerSearch get_customers(opts)

Get list of customers



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

api_instance = Reepay::CustomerApi.new

opts = { 
  page: 1, # Integer | Page number to get
  size: 20, # Integer | Page size to use
  search: "search_example", # String | Optional search expression
  sort: "sort_example" # String | Optional sorting expression
}

begin
  #Get list of customers
  result = api_instance.get_customers(opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling CustomerApi->get_customers: #{e}"
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

[**CustomerSearch**](CustomerSearch.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **import_card_json**
> Card import_card_json(handle, opts)

Import card payment method



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

api_instance = Reepay::CustomerApi.new

handle = "handle_example" # String | Customer handle

opts = { 
  body: Reepay::CardImport.new # CardImport | 
}

begin
  #Import card payment method
  result = api_instance.import_card_json(handle, opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling CustomerApi->import_card_json: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Customer handle | 
 **body** | [**CardImport**](CardImport.md)|  | [optional] 

### Return type

[**Card**](Card.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **inactivate_payment_method**
> PaymentMethods inactivate_payment_method(handle, method_id)

Inactivate payment method



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

api_instance = Reepay::CustomerApi.new

handle = "handle_example" # String | Customer handle

method_id = "method_id_example" # String | Payment method id


begin
  #Inactivate payment method
  result = api_instance.inactivate_payment_method(handle, method_id)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling CustomerApi->inactivate_payment_method: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Customer handle | 
 **method_id** | **String**| Payment method id | 

### Return type

[**PaymentMethods**](PaymentMethods.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **reactivate_card**
> Card reactivate_card(handle, card_id)

Reactivate failed card



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

api_instance = Reepay::CustomerApi.new

handle = "handle_example" # String | Customer handle

card_id = "card_id_example" # String | Card id


begin
  #Reactivate failed card
  result = api_instance.reactivate_card(handle, card_id)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling CustomerApi->reactivate_card: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Customer handle | 
 **card_id** | **String**| Card id | 

### Return type

[**Card**](Card.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_customer_json**
> Customer update_customer_json(handle, opts)

Update customer



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

api_instance = Reepay::CustomerApi.new

handle = "handle_example" # String | Customer handle

opts = { 
  body: Reepay::UpdateCustomer.new # UpdateCustomer | 
}

begin
  #Update customer
  result = api_instance.update_customer_json(handle, opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling CustomerApi->update_customer_json: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Customer handle | 
 **body** | [**UpdateCustomer**](UpdateCustomer.md)|  | [optional] 

### Return type

[**Customer**](Customer.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



