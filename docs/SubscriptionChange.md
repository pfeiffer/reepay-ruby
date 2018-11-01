# Reepay::SubscriptionChange

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**plan** | **String** | The handle of the plan to change to | [optional] 
**amount** | **Integer** | Optional custom per quantity plan price. If provided the plan price billed for each billing period will be overridden by this price. | [optional] 
**quantity** | **Integer** | Optional quantity of the plan product for this subscription. If not provided the default is the default plan quantity defined for the plan. | [optional] 
**pending** | **BOOLEAN** | Whether this is a pending change at next renewal, or it has been applied | 
**applied** | **DateTime** | If defined the change was applied on this date and time | [optional] 
**updated** | **DateTime** | Date and time of update of pending change | [optional] 
**created** | **DateTime** | Date when the change was created. In [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | 
**amount_incl_vat** | **BOOLEAN** | Whether the optional amount is including VAT. Defaults to true. | [optional] 
**subscription_add_ons** | [**Array&lt;SubscriptionAddOn&gt;**](SubscriptionAddOn.md) | List of subscription add-ons to create in change | [optional] 
**remove_add_ons** | **Array&lt;String&gt;** | Subscription add-ons to remove from subscription by subscription add-on handle | [optional] 


