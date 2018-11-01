# Reepay::CardTransaction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**card** | [**Card**](Card.md) | Card used for transaction | 
**error** | **String** | Error code if failed. See [transaction errors](https://docs.reepay.com/api/#transaction-errors). | [optional] 
**fingerprint** | **String** | Uniquely identifies this particular card number | [optional] 
**provider** | **String** | Acquirer or payment gateway used: &#x60;reepay&#x60;, &#x60;clearhaus&#x60;, &#x60;nets&#x60;, &#x60;dibs&#x60;, &#x60;stripe&#x60;, &#x60;quickpay&#x60;, &#x60;epay&#x60;, &#x60;test&#x60; | [optional] 
**ref_transaction** | **String** | Id of a possible referenced transaction | [optional] 
**gw_id** | **String** | Gateway id for card | [optional] 
**last_failed** | **DateTime** | When the card transaction last failed, in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | [optional] 
**first_failed** | **DateTime** | When the card transaction first failed, in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | [optional] 
**error_state** | **String** | Error state if failed: &#x60;pending&#x60;, &#x60;soft_declined&#x60;, &#x60;hard_declined&#x60; or &#x60;processing_error&#x60; | [optional] 
**card_type** | **String** | Card type: &#x60;unknown&#x60;, &#x60;visa&#x60;, &#x60;mc&#x60;, &#x60;dankort&#x60;, &#x60;visa_dk&#x60;, &#x60;visa_elec&#x60;, &#x60;maestro&#x60;, &#x60;laser&#x60;, &#x60;amex&#x60;, &#x60;diners&#x60;, &#x60;discover&#x60; or &#x60;jcb&#x60; | 
**exp_date** | **String** | Card expire date on form MM-YY  | [optional] 
**masked_card** | **String** | Masked card number | [optional] 
**strong_authentication_status** | **String** | Status for strong customer authentication | [optional] 
**acquirer_code** | **String** | Acquirer error code in case of error | [optional] 
**acquirer_message** | **String** | Acquirer message in case of error | [optional] 
**acquirer_reference** | **String** | Acquirer reference to transaction. E.g. Nets order id or Clearhaus reference. | [optional] 
**text_on_statement** | **String** | Resulting text on bank statement if known | [optional] 


