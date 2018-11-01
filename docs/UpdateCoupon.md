# Reepay::UpdateCoupon

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Internal name for the coupon. | 
**all_plans** | **BOOLEAN** | Whether all plans are eligible for this coupon. Defaults to false. | [optional] 
**eligible_plans** | **Array&lt;String&gt;** | If not all_plans are set to true, then the set of eligible plan handles must be defined. | [optional] 
**max_redemptions** | **Integer** | Optional maximum number of times this coupon can be redeemed. | [optional] 
**valid_until** | **String** | Optional date and time until which the coupon is redeemable. Date and time on the form &#x60;yyyy-MM-dd&#x60;, &#x60;yyyyMMdd&#x60;, &#x60;yyyy-MM-ddTHH:mm&#x60; and &#x60;yyyy-MM-ddTHH:mm:ss&#x60;. | [optional] 


