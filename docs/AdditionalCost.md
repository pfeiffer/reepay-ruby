# Reepay::AdditionalCost

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoice** | **String** | Invoice id for the invoice the additional cost has been assigned to once it has been transferred | [optional] 
**state** | **String** | State of the additional cost, one of the following: &#x60;pending&#x60;, &#x60;transferred&#x60;, &#x60;cancelled&#x60;. A pending additonal cost has not yet been transferred to a invoice. Cancelled addtional costs have been cancelled manually. | 
**subscription** | **String** | Subscription handle | 
**handle** | **String** | Per account unique handle for the additional cost | 
**ordertext** | **String** | Order text for the additional cost. Will be on affected invoices. | 
**quantity** | **Integer** | Quantity for the additional cost. Default 1. | [optional] 
**amount** | **Integer** | Additional cost total amount | 
**vat** | **Float** | Optional vat for additional cost. Account default is used if none given. | [optional] 
**created** | **DateTime** | Date when the additional cost was created. In [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | 
**amount_incl_vat** | **BOOLEAN** | Whether the amount is including VAT. Default true. | 
**amount_vat** | **Integer** | Additional cost vat amount | 
**amount_ex_vat** | **Integer** | Additional cost amount without vat | 


