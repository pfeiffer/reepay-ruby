# Reepay::UpdateAddOn

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of add-on. Will be used as order line text. | 
**description** | **String** | Optional description of add-on | [optional] 
**amount** | **Integer** | Add-on amount | 
**vat** | **Float** | Optional vat for add-on. Account default is used if none given. | [optional] 
**amount_incl_vat** | **BOOLEAN** | Whether the amount is including VAT. Default true. | [optional] 
**all_plans** | **BOOLEAN** | Whether all plans are eligible for this add-on. Defaults to false. | [optional] 
**eligible_plans** | **Array&lt;String&gt;** | If not &#x60;all_plans&#x60; are set to true, then the set of eligible plan handles must be defined. | [optional] 


