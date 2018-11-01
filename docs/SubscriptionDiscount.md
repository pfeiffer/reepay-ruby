# Reepay::SubscriptionDiscount

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**handle** | **String** | Per subscription unique handle for the subscription discount. | 
**discount** | **String** | Discount for subscription discount | 
**state** | **String** | Discount state &#x60;active&#x60; or &#x60;disabled&#x60;. | 
**coupon** | **String** | Coupon reference if this discount was released by a coupon code | [optional] 
**deleted** | **DateTime** | Date when the discount was deleted if deleted. In ISO-8601 extended offset date-time format. | [optional] 
**created** | **DateTime** | Date when the discount was created. In ISO-8601 extended offset date-time format. | 
**name** | **String** | Name of discount. Will be used as order line text. | 
**description** | **String** | Optional description of discount | [optional] 
**amount** | **Integer** | Fixed amount discount deducted from order line amounts including VAT | [optional] 
**percentage** | **Integer** | Percentage discount applied to each applicable order line | [optional] 
**count** | **Integer** | Number of invoices this subscription discount has been applied to | 
**invoices** | **Array&lt;String&gt;** | List of invoices this subscription discount has been applied to | 
**apply_to** | **Array&lt;String&gt;** | Which order lines the discount is applicable to: &#x60;all&#x60;, &#x60;setup_fee&#x60;, &#x60;plan&#x60;, &#x60;additional_cost&#x60;, &#x60;add_on&#x60; and &#x60;ondemand&#x60; | 
**fixed_count** | **Integer** | Apply discount to a fixed number of invoices | [optional] 
**fixed_period_unit** | **String** | Time unit use for fixed valid period | [optional] 
**fixed_period** | **Integer** | Fixed period length e.g. 12 months or 14 days | [optional] 
**fixed_usage_reached** | **BOOLEAN** | Whether fixed usage for subscription discount has been reached | 
**fixed_period_passed** | **BOOLEAN** | Whether fixed period for subscription discount has been passed | 


