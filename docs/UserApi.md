# Reepay::UserApi

All URIs are relative to *https://api.reepay.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_user**](UserApi.md#delete_user) | **DELETE** /v1/user/{id} | Delete user
[**get_user**](UserApi.md#get_user) | **GET** /v1/user/{id} | Get user
[**get_users**](UserApi.md#get_users) | **GET** /v1/user | Get users
[**invite_user**](UserApi.md#invite_user) | **POST** /v1/user/invite | Invite user
[**invite_user_accept**](UserApi.md#invite_user_accept) | **POST** /v1/user/invite/{token} | Accept invite
[**invite_user_get**](UserApi.md#invite_user_get) | **GET** /v1/user/invite/{token} | Get invite
[**reset_password**](UserApi.md#reset_password) | **POST** /v1/user/reset_password | Reset password request
[**reset_password_with_token**](UserApi.md#reset_password_with_token) | **POST** /v1/user/reset_password/{token} | Reset password
[**update_auth**](UserApi.md#update_auth) | **PUT** /v1/user/{id}/groups | Update user groups
[**update_password**](UserApi.md#update_password) | **PUT** /v1/user/{id}/password | Change password
[**update_user**](UserApi.md#update_user) | **PUT** /v1/user/{id} | Update user
[**verify_email**](UserApi.md#verify_email) | **POST** /v1/user/verify_email/{token} | Verify email
[**verify_email_request**](UserApi.md#verify_email_request) | **POST** /v1/user/{id}/verify_email | Send verification email


# **delete_user**
> delete_user(id)

Delete user



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

api_instance = Reepay::UserApi.new

id = "id_example" # String | User id


begin
  #Delete user
  api_instance.delete_user(id)
rescue Reepay::ApiError => e
  puts "Exception when calling UserApi->delete_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| User id | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_user**
> UserAccount get_user(id)

Get user



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

api_instance = Reepay::UserApi.new

id = "id_example" # String | User id


begin
  #Get user
  result = api_instance.get_user(id)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling UserApi->get_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| User id | 

### Return type

[**UserAccount**](UserAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_users**
> Array&lt;UserAccount&gt; get_users

Get users



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

api_instance = Reepay::UserApi.new

begin
  #Get users
  result = api_instance.get_users
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling UserApi->get_users: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;UserAccount&gt;**](UserAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **invite_user**
> UserAccount invite_user(opts)

Invite user



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

api_instance = Reepay::UserApi.new

opts = { 
  body: Reepay::InviteUser.new # InviteUser | 
}

begin
  #Invite user
  result = api_instance.invite_user(opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling UserApi->invite_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InviteUser**](InviteUser.md)|  | [optional] 

### Return type

[**UserAccount**](UserAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **invite_user_accept**
> UserAccount invite_user_accept(token, opts)

Accept invite



### Example
```ruby
# load the gem
require 'reepay'

api_instance = Reepay::UserApi.new

token = "token_example" # String | Invite token

opts = { 
  body: Reepay::InviteUserAccept.new # InviteUserAccept | 
}

begin
  #Accept invite
  result = api_instance.invite_user_accept(token, opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling UserApi->invite_user_accept: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**| Invite token | 
 **body** | [**InviteUserAccept**](InviteUserAccept.md)|  | [optional] 

### Return type

[**UserAccount**](UserAccount.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **invite_user_get**
> UserAccount invite_user_get(token)

Get invite



### Example
```ruby
# load the gem
require 'reepay'

api_instance = Reepay::UserApi.new

token = "token_example" # String | Invite token


begin
  #Get invite
  result = api_instance.invite_user_get(token)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling UserApi->invite_user_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**| Invite token | 

### Return type

[**UserAccount**](UserAccount.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **reset_password**
> reset_password(opts)

Reset password request



### Example
```ruby
# load the gem
require 'reepay'

api_instance = Reepay::UserApi.new

opts = { 
  body: Reepay::UserResetRequestPassword.new # UserResetRequestPassword | 
}

begin
  #Reset password request
  api_instance.reset_password(opts)
rescue Reepay::ApiError => e
  puts "Exception when calling UserApi->reset_password: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserResetRequestPassword**](UserResetRequestPassword.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **reset_password_with_token**
> User reset_password_with_token(token, opts)

Reset password



### Example
```ruby
# load the gem
require 'reepay'

api_instance = Reepay::UserApi.new

token = "token_example" # String | Reset password token

opts = { 
  body: Reepay::ResetUserPassword.new # ResetUserPassword | 
}

begin
  #Reset password
  result = api_instance.reset_password_with_token(token, opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling UserApi->reset_password_with_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**| Reset password token | 
 **body** | [**ResetUserPassword**](ResetUserPassword.md)|  | [optional] 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_auth**
> UserAccount update_auth(id, opts)

Update user groups



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

api_instance = Reepay::UserApi.new

id = "id_example" # String | User id

opts = { 
  body: Reepay::UpdateUserGroups.new # UpdateUserGroups | 
}

begin
  #Update user groups
  result = api_instance.update_auth(id, opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling UserApi->update_auth: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| User id | 
 **body** | [**UpdateUserGroups**](UpdateUserGroups.md)|  | [optional] 

### Return type

[**UserAccount**](UserAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_password**
> UserAccount update_password(id, opts)

Change password



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

api_instance = Reepay::UserApi.new

id = "id_example" # String | User id

opts = { 
  body: Reepay::UpdateUserPassword.new # UpdateUserPassword | 
}

begin
  #Change password
  result = api_instance.update_password(id, opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling UserApi->update_password: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| User id | 
 **body** | [**UpdateUserPassword**](UpdateUserPassword.md)|  | [optional] 

### Return type

[**UserAccount**](UserAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_user**
> UserAccount update_user(id, opts)

Update user



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

api_instance = Reepay::UserApi.new

id = "id_example" # String | User id

opts = { 
  body: Reepay::UpdateUser.new # UpdateUser | 
}

begin
  #Update user
  result = api_instance.update_user(id, opts)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling UserApi->update_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| User id | 
 **body** | [**UpdateUser**](UpdateUser.md)|  | [optional] 

### Return type

[**UserAccount**](UserAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **verify_email**
> User verify_email(token)

Verify email



### Example
```ruby
# load the gem
require 'reepay'

api_instance = Reepay::UserApi.new

token = "token_example" # String | Verify email token


begin
  #Verify email
  result = api_instance.verify_email(token)
  p result
rescue Reepay::ApiError => e
  puts "Exception when calling UserApi->verify_email: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**| Verify email token | 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **verify_email_request**
> verify_email_request(id)

Send verification email



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

api_instance = Reepay::UserApi.new

id = "id_example" # String | User id


begin
  #Send verification email
  api_instance.verify_email_request(id)
rescue Reepay::ApiError => e
  puts "Exception when calling UserApi->verify_email_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| User id | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



