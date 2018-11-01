# Reepay::Credit

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subscription** | **String** | Subscription by handle to add the credit to | 
**handle** | **String** | Per account unique handle for the credit. Max length 255 with allowable characters [a-zA-Z0-9_.-@]. | 
**amount** | **Integer** | Credit amount in the smallest unit for the account currency | 
**text** | **String** | Text describing the credit. Will be on affected invoices. | 
**state** | **String** | State of the credit, one of the following: &#x60;pending&#x60;, &#x60;transferred&#x60;, &#x60;cancelled&#x60;. Pending credits have not yet been transferred fully to invoices. Cancelled credits have been manually cancelled. | 
**created** | **DateTime** | Date when the credit was created. In [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | 
**valid_from** | **String** | Date on the form yyyy-MM-dd from which the credit is valid. The credit will not be deducted from invoices before this date. | [optional] 
**credit_invoices** | [**Array&lt;CreditInvoice&gt;**](CreditInvoice.md) | List of invoices where the credit is applied | [optional] 
**pending_amount** | **Integer** | Remaining amount not transferred to invoices | 
**invoice_credit_note** | [**InvoiceCreditNote**](InvoiceCreditNote.md) | Invoice credit note if this credit was the result of crediting an invoice | [optional] 


