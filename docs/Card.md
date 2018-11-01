# Reepay::Card

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique id for payment method | 
**state** | **String** | State of the payment method: &#x60;active&#x60;, &#x60;inactivated&#x60; or &#x60;failed&#x60; | 
**customer** | **String** | Customer by handle | 
**failed** | **DateTime** | Date when the payment method failed. In ISO-8601 extended offset date-time format. | [optional] 
**created** | **DateTime** | Date when the payment method was created. In ISO-8601 extended offset date-time format. | 
**fingerprint** | **String** | Uniquely identifies this particular card number | [optional] 
**reactivated** | **DateTime** | Date and time of reactivation if the card has been reactivated from failed state. In ISO-8601 extended offset date-time format. | [optional] 
**gw_ref** | **String** | Card gateway reference id | 
**card_type** | **String** | Card type: &#x60;unknown&#x60;, &#x60;visa&#x60;, &#x60;mc&#x60;, &#x60;dankort&#x60;, &#x60;visa_dk&#x60;, &#x60;visa_elec&#x60;, &#x60;maestro&#x60;, &#x60;laser&#x60;, &#x60;amex&#x60;, &#x60;diners&#x60;, &#x60;discover&#x60; or &#x60;jcb&#x60; | 
**exp_date** | **String** | Card expire date on form MM-YY  | [optional] 
**masked_card** | **String** | Masked card number | [optional] 
**last_success** | **DateTime** | Date and time of last succesfull use of the card. In ISO-8601 extended offset date-time format. | [optional] 
**last_failed** | **DateTime** | Date and time of last failed use of the card. In ISO-8601 extended offset date-time format. | [optional] 
**first_fail** | **DateTime** | Date and time of first succesfull use of the card. In ISO-8601 extended offset date-time format. | [optional] 
**error_code** | **String** | An error code from the last failed use of the card. See [transaction errors](https://docs.reepay.com/api/#transaction-errors). | [optional] 
**error_state** | **String** | Error state from last failed use of the card: &#x60;pending&#x60;, &#x60;soft_declined&#x60;, &#x60;hard_declined&#x60; or &#x60;processing_error&#x60; | [optional] 
**strong_authentication_status** | **String** | Status for strong customer authentication | [optional] 


