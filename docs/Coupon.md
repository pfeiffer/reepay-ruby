# Reepay::Coupon

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**handle** | **String** | Per account unique handle for the coupon | 
**code** | **String** | The coupon code. Maximum 100 characters. | 
**discount** | **String** | Discount to use for coupon | 
**name** | **String** | Internal name for the coupon. | 
**state** | **String** | Coupon state &#x60;active&#x60;, &#x60;expired&#x60;, &#x60;deleted&#x60; or &#x60;generating&#x60; | 
**type** | **String** | Coupon type either &#x60;single&#x60; or &#x60;set&#x60; | 
**redemptions** | **Integer** | Number of times the coupon has been redeemed | 
**expired** | **DateTime** | Date and time for expire if state expired. In ISO-8601 extended offset date-time format. | [optional] 
**created** | **DateTime** | Date when the coupon was created. In ISO-8601 extended offset date-time format. | 
**all_plans** | **BOOLEAN** | Whether all plans are eligible for this coupon. Defaults to false. | [optional] 
**eligible_plans** | **Array&lt;String&gt;** | If not all_plans are set to true, then the set of eligible plan handles must be defined. | [optional] 
**max_redemptions** | **Integer** | Optional maximum number of times this coupon can be redeemed. | [optional] 
**valid_until** | **DateTime** | Optional date and time until which the coupon is redeemable. In ISO-8601 extended offset date-time format. | [optional] 
**expire_reason** | **String** | The expire reason if expired. One of &#x60;early&#x60;, &#x60;valid_until&#x60; or &#x60;max&#x60;. Respectively on demand early expire, valid until has passed or max redemptions has been reached. | [optional] 


