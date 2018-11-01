# Reepay::Customer

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** | Customer email | [optional] 
**address** | **String** | Customer address | [optional] 
**address2** | **String** | Customer address2 | [optional] 
**city** | **String** | Customer city | [optional] 
**country** | **String** | Customer country in ISO 3166-1 alpha-2 | [optional] 
**phone** | **String** | Customer phone number | [optional] 
**company** | **String** | Customer company | [optional] 
**vat** | **String** | Customer vat number | [optional] 
**handle** | **String** | Per account unique handle for the customer. Max length 255 with allowable characters [a-zA-Z0-9_.-@]. | 
**test** | **BOOLEAN** | Test flag | [optional] 
**subscriptions** | **Integer** | Number of active subscriptions for this customer (deprecated, will be removed in a later version, use active_subscriptions) | 
**created** | **DateTime** | Date when the customer was created. In [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | 
**deleted** | **DateTime** | Date when the customer was deleted. In [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | [optional] 
**first_name** | **String** | Customer first name | [optional] 
**last_name** | **String** | Customer last name | [optional] 
**postal_code** | **String** | Customer postal code | [optional] 
**active_subscriptions** | **Integer** | Number of active subscriptions for this customer | 
**trial_active_subscriptions** | **Integer** | Number of active subscriptions in trial for this customer | 
**trial_cancelled_subscriptions** | **Integer** | Number of cancelled subscriptions in trial for this customer | 
**expired_subscriptions** | **Integer** | Number of expired subscription for this customer | 
**on_hold_subscriptions** | **Integer** | Number of subscription on hold for this customer | 
**cancelled_subscriptions** | **Integer** | Number of cancelled subscription for this customer | 
**non_renewing_subscriptions** | **Integer** | Number of non renewing (active subscriptions not renewing at billing period end) subscriptions for this customer | 
**failed_invoices** | **Integer** | Number of failed subscription invoices for this customer | 
**failed_amount** | **Integer** | Summed amount for failed subscription invoices | 
**cancelled_invoices** | **Integer** | Number of cancelled subscription invoices for this customer | 
**cancelled_amount** | **Integer** | Summed amount for cancelled subscription invoices | 
**pending_invoices** | **Integer** | Number of pending subscription invoices for this customer | 
**pending_amount** | **Integer** | Summed amount for pending subscription invoices | 
**dunning_invoices** | **Integer** | Number of dunning subscription invoices for this customer | 
**dunning_amount** | **Integer** | Summed amount for dunning subscription invoices | 
**settled_invoices** | **Integer** | Number of settled subscription invoices for this customer | 
**settled_amount** | **Integer** | Summed settled subscription amount | 
**refunded_amount** | **Integer** | Summed refunded subscription amount | 
**pending_additional_costs** | **Integer** | Number of pending additional costs | 
**pending_additional_cost_amount** | **Integer** | Summed amount of pending additional costs incl vat | 
**transferred_additional_costs** | **Integer** | Number of additional costs that have been applied to invoices | 
**transferred_additional_cost_amount** | **Integer** | Summed amount of additional costs that have been applied to invoices | 
**pending_credits** | **Integer** | Number of credits that have not fully been applied to invoices | 
**pending_credit_amount** | **Integer** | Summed credit amount not yet applied to invoices | 
**transferred_credits** | **Integer** | Number of credits that have fully been applied to invoices | 
**transferred_credit_amount** | **Integer** | Summed credit amount that have been applied to invoices | 


