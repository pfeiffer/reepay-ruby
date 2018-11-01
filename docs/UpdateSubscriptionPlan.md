# Reepay::UpdateSubscriptionPlan

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the plan | 
**description** | **String** | Description of the plan | [optional] 
**vat** | **Float** | Optional vat for this plan. Account default is used if none given. | [optional] 
**dunning_plan** | **String** | Dunning plan handle | [optional] 
**renewal_reminder_email_days** | **Integer** | Optional renewal reminder email settings. Number of days before next billing to send a reminder email. | [optional] 
**trial_reminder_email_days** | **Integer** | Optional end of trial reminder email settings. Number of days before end of trial to send a reminder email. | [optional] 
**partial_period_handling** | **String** | How to handle a potential initial partial billing period for fixed day scheduling. The options are to bill for a full period, bill prorated for the partial period, bill a zero amoumt, or not to consider the period before first fixed day a billing period. The default is to bill prorated. Options: &#x60;bill_full&#x60;, &#x60;bill_prorated&#x60;, &#x60;bill_zero_amount&#x60;, &#x60;no_bill&#x60;. | [optional] 
**include_zero_amount** | **BOOLEAN** | Whether to add a zero amount order line to subscription invoices if plan amount is zero or the subscription overrides to zero amount. The default is to not include the line. If no other order lines are present the plan order line will be added. | [optional] 
**setup_fee** | **Integer** | Optional one-time setup fee billed with the first invoice or as a separate invoice depending on the setting &#x60;setup_fee_invoice&#x60;. | [optional] 
**setup_fee_text** | **String** | Optional invoice order text for the setup fee that | [optional] 
**setup_fee_handling** | **String** | How the billing of the setup fee should be done. The options are: &#x60;first&#x60; - include setup fee as order line on the first scheduled invoice. &#x60;separate&#x60; - create a separate invoice for the setup fee, is appropriate if first invoice is not in conjunction with creation. &#x60;separate_conditional&#x60; - create a separate invoice for setup fee if the first invoice is not created in conjunction with the creation. Default is &#x60;first&#x60;. | [optional] 


