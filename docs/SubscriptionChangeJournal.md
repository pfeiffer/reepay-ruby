# Reepay::SubscriptionChangeJournal

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**change** | [**SubscriptionChange**](SubscriptionChange.md) | Subscription change object applied, if null the change has no impact | [optional] 
**invoice** | [**Invoice**](Invoice.md) | New invoice the change resulted in | [optional] 
**new_plan** | [**Plan**](Plan.md) | Subscription plan object if change resulted in a new plan | [optional] 
**compensation_amount** | **Integer** | If compensation the compensation amount | [optional] 
**compensation_invoice** | [**Invoice**](Invoice.md) | If compensation the credited or refunded invoice. The latest credit note gives details on the crediting. | [optional] 
**changed_period_start_date** | **DateTime** | If the change resulted in a new billing cycle this is the start date used | [optional] 


