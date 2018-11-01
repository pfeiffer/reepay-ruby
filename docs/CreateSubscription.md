# Reepay::CreateSubscription

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer** | **String** | Customer handle of existing customer. Customer can also be provided in same operation by supplying the parameter &#x60;create_customer&#x60;. | [optional] 
**plan** | **String** | Plan handle | 
**amount** | **Integer** | Optional custom per quantity plan price. If provided the plan price billed for each billing period will be overridden by this price. | [optional] 
**quantity** | **Integer** | Optional quantity of the plan product for this subscription. If not provided the default is the default plan quantity defined for the plan. | [optional] 
**test** | **BOOLEAN** | Test flag. If given it will be verified that the account state matches the intended create state. | [optional] 
**handle** | **String** | Per account unique handle for the subscription. Max length 255 with allowable characters [a-zA-Z0-9_.-@]. Must be provided if generate_handle not defined. | [optional] 
**source** | **String** | The payment method source if signup method &#x60;source&#x60;. Either an existing payment method for the customer, e.g. existing card id &#x60;ca_...&#x60; or a card token &#x60;ct_...&#x60; generated with [Reepay Token](https://docs.reepay.com/token/) or [Reepay JS Library](https://docs.reepay.com/js/). | [optional] 
**create_customer** | [**CreateCustomer**](CreateCustomer.md) | Create customer and subscription in an atomic operation | [optional] 
**plan_version** | **Integer** | Optional plan version, default is to use newest version of plan | [optional] 
**amount_incl_vat** | **BOOLEAN** | Whether the optional amount is including VAT. Defaults to true. | [optional] 
**generate_handle** | **BOOLEAN** | Auto generate handle on the form sub-[sequence_number] | [optional] 
**start_date** | **String** | Date and time on the form &#x60;yyyy-MM-dd&#x60;, &#x60;yyyyMMdd&#x60;, &#x60;yyyy-MM-ddTHH:mm&#x60; and &#x60;yyyy-MM-ddTHH:mm:ss&#x60; from which the subscription is eligible to schedule first invoice. If no time part is given start of day will be used. A start date in the past can be used, but no more than one period length in the past. A start date in the past can result in an instant invoice for a past billing period start. Default value is current date and time. | [optional] 
**end_date** | **String** | Fixed date and time on the form &#x60;yyyy-MM-dd&#x60;, &#x60;yyyyMMdd&#x60;, &#x60;yyyy-MM-ddTHH:mm&#x60; and &#x60;yyyy-MM-ddTHH:mm:ss&#x60; where the subscription will automatically cancel. The subscription will expire at the end of the billing period containing the end date. Default is no fixed end date. | [optional] 
**grace_duration** | **Integer** | A grace duration in seconds from the creation of a subscription where no dunning process is started for a failing invoice. This allows a certain amount of time for the customer to sign up with a payment method. | [optional] 
**no_trial** | **BOOLEAN** | Override plan trial settings and disable trial | [optional] 
**no_setup_fee** | **BOOLEAN** | Override plan setup fee settings and disable fee | [optional] 
**subscription_discounts** | [**Array&lt;CreateSubscriptionDiscount&gt;**](CreateSubscriptionDiscount.md) | Discounts to attach to subscription | [optional] 
**coupon_codes** | **Array&lt;String&gt;** | Coupon codes to redeem for subscription | [optional] 
**add_ons** | [**Array&lt;CreateSubscriptionAddOn&gt;**](CreateSubscriptionAddOn.md) | Add-ons to attach to subscription. The same add-on can only be attached to subscription once unless unique handles are supplied for the subscription add-on. | [optional] 
**additional_costs** | [**Array&lt;CreateSubscriptionAdditionalCost&gt;**](CreateSubscriptionAdditionalCost.md) | Additional costs to add to subscription at creation time | [optional] 
**signup_method** | **String** | The signup method, how to get payment information from customer, one of the following: &#x60;source&#x60;, &#x60;email&#x60;, &#x60;link&#x60;. The &#x60;source&#x60; method takes a token (e.g. card token &#x60;ct_..&#x60;) or a reference to an existing customer payment method (e.g. card &#x60;ca_..&#x60;). The method &#x60;email&#x60; will send an email to customer requesting payment information with a link to a hosted page. The method &#x60;link&#x60; does not do anything but the hosted page link in the subscription object can be provided to the customer as a link to enter payment information. | 
**conditional_create** | **BOOLEAN** | If the subscription is eligible to bill for the first period right away, this option will make the creation conditional on a successful payment of the first invoice. Will require a signup method of &#x60;source&#x60;. Default is false. | [optional] 


