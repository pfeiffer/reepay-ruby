# Reepay::InvoiceCreditNote

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Credit note id | 
**invoice** | **String** | Invoice credited by this note | 
**transaction** | **String** | Refund transaction id if credit note has an associated refund | [optional] 
**credit** | **String** | Credit reference if the credit note relates to a subscription credit | [optional] 
**amount** | **Integer** | Credit note amount | 
**created** | **DateTime** | Creation date for note, in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | 
**credit_note_lines** | [**Array&lt;CreditNoteLine&gt;**](CreditNoteLine.md) | Credit note lines | 


