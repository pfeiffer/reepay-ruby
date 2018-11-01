# Reepay::AddOn

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of add-on. Will be used as order line text. | 
**description** | **String** | Optional description of add-on | [optional] 
**amount** | **Integer** | Add-on amount | 
**vat** | **Float** | Optional vat for add-on. Account default is used if none given. | [optional] 
**handle** | **String** | Per account unique handle for the add-on | 
**type** | **String** | Add-on type &#x60;on_off&#x60; or &#x60;quantity&#x60;. An &#x60;on_off&#x60; type cannot be given a quantity when attached to subscription. Fo &#x60;quantity&#x60; type it is possible. | 
**state** | **String** | Add-on state &#x60;active&#x60; or &#x60;deleted&#x60;. | 
**deleted** | **DateTime** | Date when the add-on was deleted if deleted. In ISO-8601 extended offset date-time format. | [optional] 
**created** | **DateTime** | Date when the add-on was created. In ISO-8601 extended offset date-time format. | 
**amount_incl_vat** | **BOOLEAN** | Whether the amount is including VAT. Default true. | [optional] 
**all_plans** | **BOOLEAN** | Whether all plans are eligible for this add-on. Defaults to false. | [optional] 
**eligible_plans** | **Array&lt;String&gt;** | If not &#x60;all_plans&#x60; are set to true, then the set of eligible plan handles must be defined. | [optional] 


