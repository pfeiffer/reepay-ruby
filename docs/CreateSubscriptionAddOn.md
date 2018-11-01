# Reepay::CreateSubscriptionAddOn

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**handle** | **String** | Optional per subscription unique handle for the subscription add-on. If not defined the handle will default to the add-on handle, this means that by default an add-on can only be attached once to each subscription. The handle can be used to link the subscription add-on to an entity like computer serial number or vehicle license plate. | 
**quantity** | **Integer** | Optional quantity of the of the add-on for this subscription. Defaults to 1. May only be provided for add-on with type &#x60;quantity&#x60;. | [optional] 
**amount** | **Integer** | Optional custom fixed per quantity add-on price. If provided the add-on price billed for each billing period will be overridden by this price. Implicitly defines &#x60;fixed_amount&#x60; as true. Cannot be provided with &#x60;fixed_amount&#x60; false. | [optional] 
**add_on** | **String** | Add-on for subscription add-on | 
**fixed_amount** | **BOOLEAN** | Whether the price of the subscription add-on should be fixed to the current price of add-on, or the price should follow the add-on price. Defaults to true. If set to false the price of the add-on will be determined by the add-on price at the time of subscription billing. | [optional] 
**amount_incl_vat** | **BOOLEAN** | Whether the optional amount is including VAT. Defaults to true. | [optional] 


