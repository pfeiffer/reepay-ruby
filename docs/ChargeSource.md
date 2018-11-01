# Reepay::ChargeSource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | Type of charge source: &#x60;card&#x60;, &#x60;card_token&#x60;, &#x60;mobilepay&#x60; or &#x60;viabill&#x60; | 
**card** | **String** | Reference to customer card if source type &#x60;card&#x60; | [optional] 
**fingerprint** | **String** | Uniquely identifies this particular card number if credit card source | [optional] 
**provider** | **String** | Card acquirer or card payment gateway used if card source: &#x60;reepay&#x60;, &#x60;clearhaus&#x60;, &#x60;nets&#x60;, &#x60;dibs&#x60;, &#x60;stripe&#x60;, &#x60;quickpay&#x60;, &#x60;epay&#x60;, &#x60;test&#x60; | [optional] 
**auth_transaction** | **String** | Reference to authorization transaction if charge is settled after authorization | [optional] 
**card_type** | **String** | Card type if credit card source: &#x60;unknown&#x60;, &#x60;visa&#x60;, &#x60;mc&#x60;, &#x60;dankort&#x60;, &#x60;visa_dk&#x60;, &#x60;visa_elec&#x60;, &#x60;maestro&#x60;, &#x60;laser&#x60;, &#x60;amex&#x60;, &#x60;diners&#x60;, &#x60;discover&#x60; or &#x60;jcb&#x60; | [optional] 
**exp_date** | **String** | Card expire date on form MM-YY if credit card source | [optional] 
**masked_card** | **String** | Masked card number if credit card source | [optional] 
**strong_authentication_status** | **String** | Status for strong customer authentication: &#x60;threed_secure&#x60;, &#x60;threed_secure_not_enrolled, &#x60;threed_secure_local_only&#x60;, &#x60;secured_by_nets&#x60; | [optional] 
**acquirer_code** | **String** | Card acquirer error code in case of card error | [optional] 
**acquirer_message** | **String** | Card acquirer message in case of card error | [optional] 
**acquirer_reference** | **String** | Card acquirer reference to transaction in case of card source. E.g. Nets order id or Clearhaus reference. | [optional] 
**text_on_statement** | **String** | Resulting text on bank statement if known | [optional] 


