# Reepay::Invoice

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Invoice id assigned by Reepay | 
**handle** | **String** | Per account unique handle. Provided at on-demand invoice/charge creation or set to &#x60;inv-&lt;invoice_number&gt;&#x60; for automatically created subscription invoices | 
**customer** | **String** | Customer handle | 
**subscription** | **String** | Subscription handle, will be null for a one-time customer invoice | [optional] 
**plan** | **String** | Subscription plan handle for the plan used to automatically create the invoice or the case that an on-demand subscription invoice has been created that should include a plan order line | [optional] 
**state** | **String** | The invoice state one of the following: &#x60;created&#x60;, &#x60;pending&#x60;, &#x60;dunning&#x60;, &#x60;settled&#x60;, &#x60;cancelled&#x60;, &#x60;authorized&#x60;, &#x60;failed&#x60; | 
**type** | **String** | The type of invoice: &#x60;s&#x60; - subscription recurring, &#x60;so&#x60; - subscription one-time, &#x60;soi&#x60; - subscription one-time instant, &#x60;co&#x60; - customer one-time, &#x60;ch&#x60; - charge | 
**amount** | **Integer** | The invoice amount including VAT | 
**number** | **Integer** | Sequential invoice number | 
**currency** | **String** | Currency for the account in [ISO 4217](http://da.wikipedia.org/wiki/ISO_4217) three letter alpha code | 
**due** | **DateTime** | When is the invoice due, in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | 
**failed** | **DateTime** | When the invoice failed, in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | [optional] 
**settled** | **DateTime** | When the invoice settled, in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | [optional] 
**cancelled** | **DateTime** | When the invoice was cancelled, in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | [optional] 
**authorized** | **DateTime** | When the invoice was authorized, if the invoice went through an authorize and settle flow, in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | [optional] 
**credits** | [**Array&lt;CreditInvoice&gt;**](CreditInvoice.md) | Credits applied to invoice | 
**created** | **DateTime** | When the invoice was created, in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | 
**plan_version** | **Integer** | Subscription plan version | [optional] 
**dunning_plan** | **String** | Dunning plan handle | [optional] 
**discount_amount** | **Integer** | The potential discount amount deducted from the invoice amount including VAT | 
**org_amount** | **Integer** | The invoice original amount including VAT, may differ from amount if adjustments have been applied for the invoice | 
**amount_vat** | **Integer** | The invoice vat amount calculated as rounded summed fractional vats for each orderline | 
**amount_ex_vat** | **Integer** | The invoice amount without vat | 
**settled_amount** | **Integer** | Settled amount | 
**refunded_amount** | **Integer** | Refunded amount | 
**authorized_amount** | **Integer** | Authorized amount | [optional] 
**credited_amount** | **Integer** | Credited amount | [optional] 
**period_number** | **Integer** | The subscription period this invoice is for | [optional] 
**order_lines** | [**Array&lt;OrderLine&gt;**](OrderLine.md) | Order lines for invoice sorted by descending timestamp | 
**additional_costs** | **Array&lt;String&gt;** | Additional costs for invoice | 
**transactions** | [**Array&lt;Transaction&gt;**](Transaction.md) | Invoice transactions | 
**credit_notes** | [**Array&lt;InvoiceCreditNote&gt;**](InvoiceCreditNote.md) | Invoice credit notes | [optional] 
**dunning_start** | **DateTime** | When dunning for the invoice was started, in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | [optional] 
**dunning_count** | **Integer** | Number of dunning events for invoice (number of reminders sent) | [optional] 
**dunning_expired** | **DateTime** | When dunning for the invoice expired, in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | [optional] 
**period_from** | **DateTime** | The start of billing period if the invoice is for a specific billing period, in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | [optional] 
**period_to** | **DateTime** | The end of billing period if the invoice is for a specific billing period, in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | [optional] 
**settle_later** | **BOOLEAN** | Whether this is a customer one-time invoice that will be settled later | [optional] 
**settle_later_payment_method** | **String** | The payment method to use for a later settle of a one-time customer invoice | [optional] 
**billing_address** | [**InvoiceBillingAddress**](InvoiceBillingAddress.md) | Optional billing address | [optional] 
**shipping_address** | [**InvoiceShippingAddress**](InvoiceShippingAddress.md) | Optional shipping address | [optional] 


