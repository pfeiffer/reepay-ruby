# Reepay::PreparedSubscription

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**handle** | **String** | Per account unique handle for subscription | 
**customer** | **String** | Customer handle | 
**plan** | **String** | Subscription plan handle | 
**state** | **String** | State of the subscription, one of the following: &#x60;active&#x60;, &#x60;expired&#x60;, &#x60;on_hold&#x60; or &#x60;pending&#x60;. Active subscriptions can be cancelled and will expire at the end of the current billing period, or later depending on optional notice and fixation periods, this can be checked using the &#x60;is_cancelled&#x60; parameter and &#x60;expires&#x60;. | 
**test** | **BOOLEAN** | Test flag | 
**amount** | **Integer** | Optional custom plan price. If defined the plan price billed for each billing period will be overridden by this price. | [optional] 
**quantity** | **Integer** | Quantity of the plan product for this subscription. | 
**expires** | **DateTime** | Fixed date when the subscription will expire because of cancellation. In [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | [optional] 
**reactivated** | **DateTime** | Date when the subscription was reactivated from on hold. [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | [optional] 
**timezone** | **String** | Time zone for the subscription as standard time zone id. See [Wikipedia](http://en.wikipedia.org/wiki/List_of_tz_database_time_zones) | 
**created** | **DateTime** | Date when the subscription was created. In [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | 
**activated** | **DateTime** | Date when the subscription was activated. Will only differ from created in a two step prepared -&gt; activated subscription create scenario. In [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | [optional] 
**renewing** | **BOOLEAN** | If the subscription renews at current period end. Also true for subscriptions with manual scheduling. | 
**invoices** | [**Array&lt;Invoice&gt;**](Invoice.md) | List of created (prepared) invoices for prepared subscription | [optional] 
**plan_version** | **Integer** | Subscription plan version | 
**amount_incl_vat** | **BOOLEAN** | If optional custom plan price this parameter tells whether the amount is including VAT | [optional] 
**start_date** | **DateTime** | Date and time from which the subscription is eligible to schedule invoices. Either from create or from the latest reactivate or subscription change. In [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | 
**end_date** | **DateTime** | Fixed end date and time. In [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | [optional] 
**grace_duration** | **Integer** | Grace duration in seconds from the creation of a subscription where no dunning process is started for a failing invoice. This allows a certain amount of time for the customer to sign up with a payment method. | [optional] 
**current_period_start** | **DateTime** | Start date and time for the current billing period. In [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | [optional] 
**next_period_start** | **DateTime** | Start date and time for the next billing period, and also end date and time for the current billing period. Is also the date and time for next invoice if the subscription is renewing. In ISO-8601 extended offset date-time format. | [optional] 
**first_period_start** | **DateTime** | Start date and time for the first ever billing period. In ISO-8601 extended offset date-time format. | [optional] 
**last_period_start** | **DateTime** | Start date and time for the previous billing period. In [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | [optional] 
**trial_start** | **DateTime** | Start date and time of free trial period. In ISO-8601 extended offset date-time format. | [optional] 
**trial_end** | **DateTime** | End date and time of free trial period. In ISO-8601 extended offset date-time format. | [optional] 
**is_cancelled** | **BOOLEAN** | Whether the subscription has been cancelled. Cancelled subscriptions will expire at the end of the current billing period. | 
**in_trial** | **BOOLEAN** | Whether the susbcription is in its trial period. If subscription has not started (has_started), trial_start and trial_end can be used to determine if the subscription will have a trial period. | 
**has_started** | **BOOLEAN** | If subscription has a later start date, this parameter tells if the subscription has started. Use this in connection with state to determine if a subscription is active. | 
**renewal_count** | **Integer** | Number of renewals for the subscription (number of invoices) | 
**cancelled_date** | **DateTime** | Date when the subscription was cancelled. In [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | [optional] 
**expired_date** | **DateTime** | Date when the subscription expired. [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | [optional] 
**expire_reason** | **String** | Reason for expire. Can be &#x60;ondemand&#x60;, &#x60;cancelled&#x60;, &#x60;dunning&#x60; or &#x60;fixed&#x60;  | [optional] 
**on_hold_date** | **DateTime** | Date when the subscription was put on hold. [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | [optional] 
**on_hold_reason** | **String** | Reason for on hold. Can be &#x60;ondemand&#x60; or &#x60;dunning&#x60;  | [optional] 
**payment_method_added** | **BOOLEAN** | Whether the customer at some point has added payment information to the subscription | 
**scheduled_plan_change** | **String** | Deprecated - see &#x60;pending_change&#x60;. If set, a subscription plan change has been scheduled to follow the next renewal. The value is the subscription plan handle to update to. | [optional] 
**reminder_email_sent** | **DateTime** | If defined the date a reminder email was sent for the current billing period. In [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | 
**failed_invoices** | **Integer** | Number of failed invoices for this subscription | 
**failed_amount** | **Integer** | Summed amount for failed invoices | 
**cancelled_invoices** | **Integer** | Number of cancelled invoices for this subscription | 
**cancelled_amount** | **Integer** | Summed amount for cancelled invoices | 
**pending_invoices** | **Integer** | Number of pending invoices for this subscription | 
**pending_amount** | **Integer** | Summed amount for pending invoices | 
**dunning_invoices** | **Integer** | Number of dunning invoices for this subscription | 
**dunning_amount** | **Integer** | Summed amount for dunning invoices | 
**settled_invoices** | **Integer** | Number of settled invoices for this subscription | 
**settled_amount** | **Integer** | Summed settled amount | 
**refunded_amount** | **Integer** | Summed refunded amount | 
**pending_additional_costs** | **Integer** | Number of pending additional costs | 
**pending_additional_cost_amount** | **Integer** | Summed amount of pending additional costs incl vat | 
**transferred_additional_costs** | **Integer** | Number of additional costs that have been applied to invoices | 
**transferred_additional_cost_amount** | **Integer** | Summed amount of additional costs that have been applied to invoices | 
**pending_credits** | **Integer** | Number of credits that have not fully been applied to invoices | 
**pending_credit_amount** | **Integer** | Summed credit amount not yet applied to invoices | 
**transferred_credits** | **Integer** | Number of credits that have fully been applied to invoices | 
**transferred_credit_amount** | **Integer** | Summed credit amount that have been applied to invoices | 
**hosted_page_links** | [**SubscriptionLinks**](SubscriptionLinks.md) | Links to hosted pages relating to subscription | 
**subscription_discounts** | **Array&lt;String&gt;** | List of subscription discounts handles attached to subscription | [optional] 
**pending_change** | [**SubscriptionChange**](SubscriptionChange.md) | Pending subscription change to be applied at next renewal | [optional] 
**subscription_changes** | [**Array&lt;SubscriptionChange&gt;**](SubscriptionChange.md) | List of subscription changes both at most one pending and previously applied | [optional] 
**subscription_add_ons** | **Array&lt;String&gt;** | List of subscription add-on handles attached to subscription | [optional] 


