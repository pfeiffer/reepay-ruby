# Reepay::CreateSubscriptionAdditionalCost

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**handle** | **String** | Per account unique handle for the additional cost | 
**ordertext** | **String** | Order text for the additional cost. Will be on affected invoices. | 
**quantity** | **Integer** | Quantity for the additional cost. Default 1. | [optional] 
**amount** | **Integer** | Per quantity amount in the smallest unit for the account currency | 
**vat** | **Float** | Optional vat for additional cost. Account default is used if none given. | [optional] 
**amount_incl_vat** | **BOOLEAN** | Whether the per quantity amount is including VAT. Defaults to true. | [optional] 


