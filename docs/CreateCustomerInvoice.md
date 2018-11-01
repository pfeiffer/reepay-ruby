# Reepay::CreateCustomerInvoice

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**handle** | **String** | Per account unique handle for the invoice. Max length 255 with allowable characters [a-zA-Z0-9_.-@]. It is recommended to use a maximum of 20 characters as this will allow for the use of handle as reference on bank statements without truncation. | 
**settle** | [**Settle**](Settle.md) | Optional settle to perform after creation | [optional] 
**order_lines** | [**Array&lt;CreateOrderLine&gt;**](CreateOrderLine.md) | Order lines for the invoice | 
**manual_transfer** | [**ManualSettleTransfer**](ManualSettleTransfer.md) | Optional manual transfer to settle invoice with after creation. | [optional] 
**billing_address** | [**InvoiceBillingAddress**](InvoiceBillingAddress.md) | Optional billing address | [optional] 
**shipping_address** | [**InvoiceShippingAddress**](InvoiceShippingAddress.md) | Optional shipping address | [optional] 


