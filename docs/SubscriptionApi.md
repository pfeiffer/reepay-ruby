# Reepay::SubscriptionApi

All URIs are relative to *https://api.reepay.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_subscription**](SubscriptionApi.md#cancel_subscription) | **POST** /v1/subscription/{handle}/cancel | Cancel subscription
[**change_next_period_start_json**](SubscriptionApi.md#change_next_period_start_json) | **POST** /v1/subscription/{handle}/change_next_period_start | Change next renewal date
[**change_subscription**](SubscriptionApi.md#change_subscription) | **PUT** /v1/subscription/{handle} | Change subscription
[**create_subscription_discount**](SubscriptionApi.md#create_subscription_discount) | **POST** /v1/subscription/{handle}/discount | Add subscription discount
[**create_subscription_invoice**](SubscriptionApi.md#create_subscription_invoice) | **POST** /v1/subscription/{handle}/invoice | Create invoice ondemand for subscription
[**create_subscription_json**](SubscriptionApi.md#create_subscription_json) | **POST** /v1/subscription | Create subscription
[**delete_subscription_discount**](SubscriptionApi.md#delete_subscription_discount) | **DELETE** /v1/subscription/{handle}/discount/{sdHandle} | Delete subscription discount
[**expire**](SubscriptionApi.md#expire) | **POST** /v1/subscription/{handle}/expire | Expire subscription
[**get_subscription**](SubscriptionApi.md#get_subscription) | **GET** /v1/subscription/{handle} | Get subscription
[**get_subscription_add_on**](SubscriptionApi.md#get_subscription_add_on) | **GET** /v1/subscription/{handle}/add_on/{saHandle} | Get subscription add-on
[**get_subscription_add_ons**](SubscriptionApi.md#get_subscription_add_ons) | **GET** /v1/subscription/{handle}/add_on | Get subscription add-ons
[**get_subscription_discount**](SubscriptionApi.md#get_subscription_discount) | **GET** /v1/subscription/{handle}/discount/{sdHandle} | Get subscription discount
[**get_subscription_discounts**](SubscriptionApi.md#get_subscription_discounts) | **GET** /v1/subscription/{handle}/discount | Get subscription discounts
[**get_subscription_payment_methods**](SubscriptionApi.md#get_subscription_payment_methods) | **GET** /v1/subscription/{handle}/payment_method | Get payment methods
[**get_subscription_period_balance**](SubscriptionApi.md#get_subscription_period_balance) | **GET** /v1/subscription/{handle}/period_balance | Get the period balance for subscription
[**get_subscriptions**](SubscriptionApi.md#get_subscriptions) | **GET** /v1/subscription | Get list of subscriptions
[**interval_amount**](SubscriptionApi.md#interval_amount) | **GET** /v1/subscription/{handle}/interval_amount | Calculate interval amount
[**on_hold**](SubscriptionApi.md#on_hold) | **POST** /v1/subscription/{handle}/on_hold | Subscription on hold
[**preview_change_subscription**](SubscriptionApi.md#preview_change_subscription) | **PUT** /v1/subscription/{handle}/preview | Preview change subscription
[**preview_subscription**](SubscriptionApi.md#preview_subscription) | **POST** /v1/subscription/preview | Preview subscription
[**reactivate_subscription**](SubscriptionApi.md#reactivate_subscription) | **POST** /v1/subscription/{handle}/reactivate | Reactivate subscription on hold
[**redeem_coupon_code**](SubscriptionApi.md#redeem_coupon_code) | **POST** /v1/subscription/{handle}/coupon | Redeem coupon code for subscription
[**remove_all_payment_methods**](SubscriptionApi.md#remove_all_payment_methods) | **DELETE** /v1/subscription/{handle}/payment_method | Remove all payment methods
[**remove_payment_method**](SubscriptionApi.md#remove_payment_method) | **DELETE** /v1/subscription/{handle}/payment_method/{method_id} | Remove payment method
[**set_payment_method**](SubscriptionApi.md#set_payment_method) | **POST** /v1/subscription/{handle}/payment_method | Set payment method
[**uncancel**](SubscriptionApi.md#uncancel) | **POST** /v1/subscription/{handle}/uncancel | Uncancel subscription


# **cancel_subscription**
> Subscription cancel_subscription(handle, opts)

Cancel subscription



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

api_instance = Reepay::SubscriptionApi.new

handle = "handle_example" # String | Subscription handle

opts = { 
  body: Reepay::CancelSubscription.new # CancelSubscription | 
}

begin
  #Cancel subscription
  result = api_instance.cancel_subscription(handle, opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling SubscriptionApi->cancel_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Subscription handle | 
 **body** | [**CancelSubscription**](CancelSubscription.md)|  | [optional] 

### Return type

[**Subscription**](Subscription.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **change_next_period_start_json**
> Subscription change_next_period_start_json(handle, opts)

Change next renewal date



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

api_instance = Reepay::SubscriptionApi.new

handle = "handle_example" # String | Subscription handle

opts = { 
  body: Reepay::ChangeNextPeriodStart.new # ChangeNextPeriodStart | 
}

begin
  #Change next renewal date
  result = api_instance.change_next_period_start_json(handle, opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling SubscriptionApi->change_next_period_start_json: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Subscription handle | 
 **body** | [**ChangeNextPeriodStart**](ChangeNextPeriodStart.md)|  | [optional] 

### Return type

[**Subscription**](Subscription.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **change_subscription**
> Subscription change_subscription(handle, opts)

Change subscription



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

api_instance = Reepay::SubscriptionApi.new

handle = "handle_example" # String | Subscription handle

opts = { 
  body: Reepay::ChangeSubscription.new # ChangeSubscription | 
}

begin
  #Change subscription
  result = api_instance.change_subscription(handle, opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling SubscriptionApi->change_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Subscription handle | 
 **body** | [**ChangeSubscription**](ChangeSubscription.md)|  | [optional] 

### Return type

[**Subscription**](Subscription.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_subscription_discount**
> SubscriptionDiscount create_subscription_discount(handle, opts)

Add subscription discount



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

api_instance = Reepay::SubscriptionApi.new

handle = "handle_example" # String | Subscription handle

opts = { 
  body: Reepay::CreateSubscriptionDiscount.new # CreateSubscriptionDiscount | 
}

begin
  #Add subscription discount
  result = api_instance.create_subscription_discount(handle, opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling SubscriptionApi->create_subscription_discount: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Subscription handle | 
 **body** | [**CreateSubscriptionDiscount**](CreateSubscriptionDiscount.md)|  | [optional] 

### Return type

[**SubscriptionDiscount**](SubscriptionDiscount.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_subscription_invoice**
> Invoice create_subscription_invoice(handle, opts)

Create invoice ondemand for subscription



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

api_instance = Reepay::SubscriptionApi.new

handle = "handle_example" # String | Subscription handle

opts = { 
  body: Reepay::CreateSubscriptionInvoice.new # CreateSubscriptionInvoice | 
}

begin
  #Create invoice ondemand for subscription
  result = api_instance.create_subscription_invoice(handle, opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling SubscriptionApi->create_subscription_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Subscription handle | 
 **body** | [**CreateSubscriptionInvoice**](CreateSubscriptionInvoice.md)|  | [optional] 

### Return type

[**Invoice**](Invoice.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_subscription_json**
> Subscription create_subscription_json(opts)

Create subscription



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

api_instance = Reepay::SubscriptionApi.new

opts = { 
  body: Reepay::CreateSubscription.new # CreateSubscription | 
}

begin
  #Create subscription
  result = api_instance.create_subscription_json(opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling SubscriptionApi->create_subscription_json: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateSubscription**](CreateSubscription.md)|  | [optional] 

### Return type

[**Subscription**](Subscription.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_subscription_discount**
> SubscriptionDiscount delete_subscription_discount(handle, sd_handle)

Delete subscription discount



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

api_instance = Reepay::SubscriptionApi.new

handle = "handle_example" # String | Subscription handle

sd_handle = "sd_handle_example" # String | Subscription discount handle


begin
  #Delete subscription discount
  result = api_instance.delete_subscription_discount(handle, sd_handle)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling SubscriptionApi->delete_subscription_discount: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Subscription handle | 
 **sd_handle** | **String**| Subscription discount handle | 

### Return type

[**SubscriptionDiscount**](SubscriptionDiscount.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **expire**
> Subscription expire(handle, opts)

Expire subscription



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

api_instance = Reepay::SubscriptionApi.new

handle = "handle_example" # String | Subscription handle

opts = { 
  body: Reepay::ExpireSubscription.new # ExpireSubscription | 
}

begin
  #Expire subscription
  result = api_instance.expire(handle, opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling SubscriptionApi->expire: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Subscription handle | 
 **body** | [**ExpireSubscription**](ExpireSubscription.md)|  | [optional] 

### Return type

[**Subscription**](Subscription.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_subscription**
> Subscription get_subscription(handle)

Get subscription



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

api_instance = Reepay::SubscriptionApi.new

handle = "handle_example" # String | Subscription handle


begin
  #Get subscription
  result = api_instance.get_subscription(handle)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling SubscriptionApi->get_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Subscription handle | 

### Return type

[**Subscription**](Subscription.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_subscription_add_on**
> SubscriptionAddOn get_subscription_add_on(handle, sa_handle)

Get subscription add-on



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

api_instance = Reepay::SubscriptionApi.new

handle = "handle_example" # String | Subscription handle

sa_handle = "sa_handle_example" # String | Subscription add-on handle


begin
  #Get subscription add-on
  result = api_instance.get_subscription_add_on(handle, sa_handle)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling SubscriptionApi->get_subscription_add_on: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Subscription handle | 
 **sa_handle** | **String**| Subscription add-on handle | 

### Return type

[**SubscriptionAddOn**](SubscriptionAddOn.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_subscription_add_ons**
> Array&lt;SubscriptionAddOn&gt; get_subscription_add_ons(handle)

Get subscription add-ons



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

api_instance = Reepay::SubscriptionApi.new

handle = "handle_example" # String | Subscription handle


begin
  #Get subscription add-ons
  result = api_instance.get_subscription_add_ons(handle)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling SubscriptionApi->get_subscription_add_ons: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Subscription handle | 

### Return type

[**Array&lt;SubscriptionAddOn&gt;**](SubscriptionAddOn.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_subscription_discount**
> SubscriptionDiscount get_subscription_discount(handle, sd_handle)

Get subscription discount



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

api_instance = Reepay::SubscriptionApi.new

handle = "handle_example" # String | Subscription handle

sd_handle = "sd_handle_example" # String | Subscription discount handle


begin
  #Get subscription discount
  result = api_instance.get_subscription_discount(handle, sd_handle)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling SubscriptionApi->get_subscription_discount: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Subscription handle | 
 **sd_handle** | **String**| Subscription discount handle | 

### Return type

[**SubscriptionDiscount**](SubscriptionDiscount.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_subscription_discounts**
> Array&lt;SubscriptionDiscount&gt; get_subscription_discounts(handle)

Get subscription discounts



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

api_instance = Reepay::SubscriptionApi.new

handle = "handle_example" # String | Subscription handle


begin
  #Get subscription discounts
  result = api_instance.get_subscription_discounts(handle)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling SubscriptionApi->get_subscription_discounts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Subscription handle | 

### Return type

[**Array&lt;SubscriptionDiscount&gt;**](SubscriptionDiscount.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_subscription_payment_methods**
> PaymentMethods get_subscription_payment_methods(handle)

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

api_instance = Reepay::SubscriptionApi.new

handle = "handle_example" # String | Subscription handle


begin
  #Get payment methods
  result = api_instance.get_subscription_payment_methods(handle)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling SubscriptionApi->get_subscription_payment_methods: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Subscription handle | 

### Return type

[**PaymentMethods**](PaymentMethods.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_subscription_period_balance**
> SubscriptionPeriodBalance get_subscription_period_balance(handle, opts)

Get the period balance for subscription



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

api_instance = Reepay::SubscriptionApi.new

handle = "handle_example" # String | Subscription handle

opts = { 
  date: "date_example" # String | Optional period date (default now) on the form `yyyy-MM-dd`, `yyyyMMdd`, `yyyy-MM-ddTHH:mm` and `yyyy-MM-ddTHH:mm:ss`
}

begin
  #Get the period balance for subscription
  result = api_instance.get_subscription_period_balance(handle, opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling SubscriptionApi->get_subscription_period_balance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Subscription handle | 
 **date** | **String**| Optional period date (default now) on the form &#x60;yyyy-MM-dd&#x60;, &#x60;yyyyMMdd&#x60;, &#x60;yyyy-MM-ddTHH:mm&#x60; and &#x60;yyyy-MM-ddTHH:mm:ss&#x60; | [optional] 

### Return type

[**SubscriptionPeriodBalance**](SubscriptionPeriodBalance.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_subscriptions**
> SubscriptionSearch get_subscriptions(opts)

Get list of subscriptions



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

api_instance = Reepay::SubscriptionApi.new

opts = { 
  page: 1, # Integer | Page number to get
  size: 20, # Integer | Page size to use
  search: "search_example", # String | Optional search expression
  sort: "sort_example" # String | Optional sorting expression
}

begin
  #Get list of subscriptions
  result = api_instance.get_subscriptions(opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling SubscriptionApi->get_subscriptions: #{e}"
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

[**SubscriptionSearch**](SubscriptionSearch.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **interval_amount**
> IntervalAmount interval_amount(handle, from, to)

Calculate interval amount



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

api_instance = Reepay::SubscriptionApi.new

handle = "handle_example" # String | Subscription handle

from = "\"2015-05-30\"" # String | From date on the form yyyy-MM-dd

to = "\"2015-07-15\"" # String | To date on the form yyyy-MM-dd


begin
  #Calculate interval amount
  result = api_instance.interval_amount(handle, from, to)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling SubscriptionApi->interval_amount: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Subscription handle | 
 **from** | **String**| From date on the form yyyy-MM-dd | 
 **to** | **String**| To date on the form yyyy-MM-dd | 

### Return type

[**IntervalAmount**](IntervalAmount.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **on_hold**
> Subscription on_hold(handle, opts)

Subscription on hold



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

api_instance = Reepay::SubscriptionApi.new

handle = "handle_example" # String | Subscription handle

opts = { 
  body: Reepay::OnHoldSubscription.new # OnHoldSubscription | 
}

begin
  #Subscription on hold
  result = api_instance.on_hold(handle, opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling SubscriptionApi->on_hold: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Subscription handle | 
 **body** | [**OnHoldSubscription**](OnHoldSubscription.md)|  | [optional] 

### Return type

[**Subscription**](Subscription.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **preview_change_subscription**
> ChangedSubscription preview_change_subscription(handle, opts)

Preview change subscription



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

api_instance = Reepay::SubscriptionApi.new

handle = "handle_example" # String | Subscription handle

opts = { 
  body: Reepay::ChangeSubscription.new # ChangeSubscription | 
}

begin
  #Preview change subscription
  result = api_instance.preview_change_subscription(handle, opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling SubscriptionApi->preview_change_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Subscription handle | 
 **body** | [**ChangeSubscription**](ChangeSubscription.md)|  | [optional] 

### Return type

[**ChangedSubscription**](ChangedSubscription.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **preview_subscription**
> PreparedSubscription preview_subscription(opts)

Preview subscription



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

api_instance = Reepay::SubscriptionApi.new

opts = { 
  body: Reepay::CreatePreparedSubscription.new # CreatePreparedSubscription | 
}

begin
  #Preview subscription
  result = api_instance.preview_subscription(opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling SubscriptionApi->preview_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreatePreparedSubscription**](CreatePreparedSubscription.md)|  | [optional] 

### Return type

[**PreparedSubscription**](PreparedSubscription.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **reactivate_subscription**
> Subscription reactivate_subscription(handle, opts)

Reactivate subscription on hold



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

api_instance = Reepay::SubscriptionApi.new

handle = "handle_example" # String | Subscription handle

opts = { 
  body: Reepay::ReactivateSubscription.new # ReactivateSubscription | 
}

begin
  #Reactivate subscription on hold
  result = api_instance.reactivate_subscription(handle, opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling SubscriptionApi->reactivate_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Subscription handle | 
 **body** | [**ReactivateSubscription**](ReactivateSubscription.md)|  | [optional] 

### Return type

[**Subscription**](Subscription.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **redeem_coupon_code**
> CouponRedemption redeem_coupon_code(handle, opts)

Redeem coupon code for subscription



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

api_instance = Reepay::SubscriptionApi.new

handle = "handle_example" # String | Subscription handle

opts = { 
  body: Reepay::RedeemCouponCode.new # RedeemCouponCode | 
}

begin
  #Redeem coupon code for subscription
  result = api_instance.redeem_coupon_code(handle, opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling SubscriptionApi->redeem_coupon_code: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Subscription handle | 
 **body** | [**RedeemCouponCode**](RedeemCouponCode.md)|  | [optional] 

### Return type

[**CouponRedemption**](CouponRedemption.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **remove_all_payment_methods**
> PaymentMethods remove_all_payment_methods(handle)

Remove all payment methods



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

api_instance = Reepay::SubscriptionApi.new

handle = "handle_example" # String | Subscription handle


begin
  #Remove all payment methods
  result = api_instance.remove_all_payment_methods(handle)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling SubscriptionApi->remove_all_payment_methods: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Subscription handle | 

### Return type

[**PaymentMethods**](PaymentMethods.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **remove_payment_method**
> PaymentMethods remove_payment_method(handle, method_id)

Remove payment method



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

api_instance = Reepay::SubscriptionApi.new

handle = "handle_example" # String | Subscription handle

method_id = "method_id_example" # String | Payment method id


begin
  #Remove payment method
  result = api_instance.remove_payment_method(handle, method_id)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling SubscriptionApi->remove_payment_method: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Subscription handle | 
 **method_id** | **String**| Payment method id | 

### Return type

[**PaymentMethods**](PaymentMethods.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set_payment_method**
> PaymentMethods set_payment_method(handle, opts)

Set payment method



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

api_instance = Reepay::SubscriptionApi.new

handle = "handle_example" # String | Subscription handle

opts = { 
  body: Reepay::SetPaymentMethod.new # SetPaymentMethod | 
}

begin
  #Set payment method
  result = api_instance.set_payment_method(handle, opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling SubscriptionApi->set_payment_method: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Subscription handle | 
 **body** | [**SetPaymentMethod**](SetPaymentMethod.md)|  | [optional] 

### Return type

[**PaymentMethods**](PaymentMethods.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **uncancel**
> Subscription uncancel(handle)

Uncancel subscription



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

api_instance = Reepay::SubscriptionApi.new

handle = "handle_example" # String | Subscription handle


begin
  #Uncancel subscription
  result = api_instance.uncancel(handle)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling SubscriptionApi->uncancel: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handle** | **String**| Subscription handle | 

### Return type

[**Subscription**](Subscription.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



