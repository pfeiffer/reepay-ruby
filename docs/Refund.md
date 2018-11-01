# Reepay::Refund

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Refund id assigned by Reepay | 
**state** | **String** | The refund state either &#x60;refunded&#x60; or &#x60;failed&#x60; | 
**invoice** | **String** | Invoice/charge handle | 
**amount** | **Integer** | Refunded amount | 
**currency** | **String** | Currency for the account in [ISO 4217](http://da.wikipedia.org/wiki/ISO_4217) three letter alpha code | 
**transaction** | **String** | Transaction id assigned by Reepay | 
**error** | **String** | Reepay error code if failed. See [transaction errors](https://docs.reepay.com/api/#transaction-errors). | [optional] 
**type** | **String** | Type of refund, either &#x60;card&#x60;, &#x60;mobilepay&#x60;, &#x60;viabill&#x60; or &#x60;manual&#x60; | 
**created** | **DateTime** | When the refund was created, in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | 
**credit_note_id** | **String** | Credit note id for successful refund | [optional] 
**ref_transaction** | **String** | Id of a possible settled transaction that has been refunded | [optional] 
**error_state** | **String** | Reepay error state if failed: &#x60;hard_declined&#x60; or &#x60;processing_error&#x60;. A hard decline indicates a refund decline by acquirer. A processing error indicates an error processing the refund either at Reepay, the acquirer, or between Reepay amd the acquirer. | [optional] 


