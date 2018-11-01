# Reepay::SubscriptionAddOn

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**handle** | **String** | Per subscription unique handle for the subscription add-on. | 
**quantity** | **Integer** | Quantity of the subscription add-on. Only defined for quantity type add-ons | [optional] 
**amount** | **Integer** | Fixed subscription add-on per quantity price. If not defined the subscription add-on uses the add-on price. | [optional] 
**created** | **DateTime** | Date when the subscription add-on was created. In ISO-8601 extended offset date-time format. | 
**add_on** | [**AddOn**](AddOn.md) | Add-on for subscription add-on | 
**amount_incl_vat** | **BOOLEAN** | If fixed price this parameter tells whether the amount is including VAT | [optional] 


