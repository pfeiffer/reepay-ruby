# Reepay::OrderLine

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Per account unique order line id | 
**ordertext** | **String** | Order line text | 
**amount** | **Integer** | Order line total amount including vat | 
**vat** | **Float** | Order line vat percent | 
**quantity** | **Integer** | Order line quantity | 
**origin** | **String** | Order line origin, one of the following: &#x60;plan&#x60;, &#x60;add_on&#x60;, &#x60;ondemand&#x60;, &#x60;additional_cost&#x60;, &#x60;credit&#x60;, &#x60;discount&#x60;, &#x60;setup_fee&#x60; | 
**timestamp** | **DateTime** | Timestamp from order line origin, in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | 
**discounted_amount** | **Integer** | Order line amount after potential discount has been deducted | [optional] 
**amount_vat** | **Integer** | Order line total vat amount | 
**amount_ex_vat** | **Integer** | Order line total amount without vat | 
**unit_amount** | **Integer** | Order line unit amount including vat | 
**unit_amount_vat** | **Integer** | Order line unit vat amount | 
**unit_amount_ex_vat** | **Integer** | Order line unit amount without vat | 
**amount_defined_incl_vat** | **BOOLEAN** | Whether the amount was defined including VAT. E.g. plan amount defined including VAT. | 
**origin_handle** | **String** | Handle for additional cost, credit, plan or subscription discount in the case one of those are the origin | [optional] 
**period_from** | **DateTime** | The start of billing period if the order line is a plan order line for a specific billing period, in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | [optional] 
**period_to** | **DateTime** | The end of billing period if the order line is a plan order line for a specific billing period, in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | [optional] 
**discount_percentage** | **Integer** | The discount percentage for discount order lines that has a percentage discount | [optional] 
**discounted_order_line** | **String** | For discount order lines a reference to the order line for which the order line is a discount | [optional] 


