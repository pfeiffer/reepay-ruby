# Reepay::UserLogin

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**token** | **String** | Authentication token to use in X-Auth-Token | 
**user** | [**User**](User.md) | Logged in user | 
**account** | [**AccountLogin**](AccountLogin.md) | Account logged into | 
**organisation** | [**Organisation**](Organisation.md) | Organisation for account logged into | 
**organisations** | [**Array&lt;OrganisationLogin&gt;**](OrganisationLogin.md) | List of organisations for user | 
**groups** | **Array&lt;String&gt;** | List user groups | 
**permissions** | **Array&lt;String&gt;** | List user permissions | 
**token_ttl** | **Integer** | Token time-to-live in minutes | 


