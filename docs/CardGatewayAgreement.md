# Reepay::CardGatewayAgreement

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**provider** | **String** | Card gateway provider type | 
**card_types** | **Array&lt;String&gt;** | Card types supported by agreement | 
**provider_settings** | **Hash&lt;String, Object&gt;** | Key value map of provider settings | [optional] 
**threed_secure** | **BOOLEAN** | Use 3DSecure for non-recurring payments (if supported by provider) | [optional] 
**threed_secure_recurring** | **BOOLEAN** | Use 3DSecure for recurring payments (if supported by provider) | [optional] 
**secured_by_nets** | **BOOLEAN** | Use Secured By Nets for non-recurring payments (if supported by provider) | [optional] 
**secured_by_nets_recurring** | **BOOLEAN** | Use Secured By Nets for recurring payments (if supported by provider) | [optional] 
**gw_ref** | **String** | Card gateway reference id | 


