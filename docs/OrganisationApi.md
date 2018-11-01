# Reepay::OrganisationApi

All URIs are relative to *https://api.reepay.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_organisation**](OrganisationApi.md#get_organisation) | **GET** /v1/organisation | Get organisation
[**update**](OrganisationApi.md#update) | **PUT** /v1/organisation | Update organisation


# **get_organisation**
> Organisation get_organisation

Get organisation



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

api_instance = Reepay::OrganisationApi.new

begin
  #Get organisation
  result = api_instance.get_organisation
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling OrganisationApi->get_organisation: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Organisation**](Organisation.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> Organisation update(opts)

Update organisation



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

api_instance = Reepay::OrganisationApi.new

opts = { 
  body: Reepay::UpdateOrganisation.new # UpdateOrganisation | 
}

begin
  #Update organisation
  result = api_instance.update(opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling OrganisationApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpdateOrganisation**](UpdateOrganisation.md)|  | [optional] 

### Return type

[**Organisation**](Organisation.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



