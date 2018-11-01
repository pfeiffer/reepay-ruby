# Reepay::CreateDiscount

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**handle** | **String** | Per account unique handle for the discount | 
**name** | **String** | Name of discount. Will be used as order line text. | 
**description** | **String** | Optional description of discount | [optional] 
**amount** | **Integer** | Fixed amount discount deducted from order line amounts including VAT | [optional] 
**percentage** | **Integer** | Percentage discount applied to each applicable order line | [optional] 
**apply_to** | **Array&lt;String&gt;** | Which order lines the discount is applicable to: &#x60;all&#x60;, &#x60;setup_fee&#x60;, &#x60;plan&#x60;, &#x60;additional_cost&#x60;, &#x60;add_on&#x60; and &#x60;ondemand&#x60; | 
**fixed_count** | **Integer** | Apply discount to a fixed number of invoices | [optional] 
**fixed_period_unit** | **String** | Time unit use for fixed valid period either &#x60;days&#x60; or &#x60;months&#x60; | [optional] 
**fixed_period** | **Integer** | Fixed period length e.g. 12 months or 14 days | [optional] 


