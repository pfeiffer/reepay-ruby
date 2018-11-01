# Reepay::SubscriptionPeriodBalance

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**date** | **DateTime** | Date in period for this period balance | [optional] 
**invoice** | [**Invoice**](Invoice.md) | Invoice for period, if it exists. See &#x60;period_from&#x60; and &#x60;period_to&#x60; for period start and end. | [optional] 
**paid** | **Integer** | The plan amount paid and settled for this period | [optional] 
**consumed** | **Integer** | The partial plan amount consumed up to date for this period | [optional] 
**remaining** | **Integer** | The partial plan amount remaining for this period. This amount can be refunded in the case the subscription is expired or put on hold and the amount has been paid. | [optional] 
**creditable** | **Integer** | The amount that can be credited for the period invoice | [optional] 
**period_amount** | **Integer** | Full period amount for period | [optional] 
**online_refundable** | **Integer** | The amount that can be online refunded on the subscription | [optional] 


