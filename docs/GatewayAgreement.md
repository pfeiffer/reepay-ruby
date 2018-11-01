# Reepay::GatewayAgreement

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Agreement id | 
**state** | **String** | Agreement state: &#x60;active&#x60;, &#x60;disabled&#x60;, &#x60;pending&#x60; or &#x60;deleted&#x60; | 
**type** | **String** | Agreement type: &#x60;card&#x60;, &#x60;viabill&#x60;, &#x60;mobilepay&#x60;, &#x60;mobilepay_subscription&#x60; | 
**usage** | **String** | Agreement payment type usage: &#x60;single&#x60;, &#x60;reusable&#x60;, &#x60;subscription&#x60; | 
**test** | **BOOLEAN** | Test agreement or not | 
**created** | **DateTime** | Date when the agreement was created. In [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | 
**card_gateway_agreement** | [**CardGatewayAgreement**](CardGatewayAgreement.md) | Card gateway agreement details in case of card gateway | [optional] 
**pgw_agreement** | [**PgwAgreement**](PgwAgreement.md) | Payment gateway in case of payment gateway | [optional] 
**mobile_pay_subscription_agreement** | [**MobilePaySubscriptionAgreement**](MobilePaySubscriptionAgreement.md) | MobilePay subscription agreement details in case of MobilePay subscription | [optional] 


