# Reepay::CreateSubscriptionInvoice

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**handle** | **String** | Per account unique handle for the invoice. Max length 255 with allowable characters [a-zA-Z0-9_.-@]. It is recommended to use a maximum of 20 characters as this will allow for the use of handle as reference on bank statements without truncation. | 
**instant** | **BOOLEAN** | Create and process invoice instantly and leave as either &#x60;settled&#x60; or &#x60;failed&#x60;. The default is to leave the invoice for automatic processing and potential dunning management as other subscription invoices (default false). | [optional] 
**due** | **String** | Optional due date and time on the form yyyy-MM-dd, yyyyMMdd, yyyy-MM-ddTHH:mm and yyyy-MM-ddTHH:mm:ss from which the invoice is eligible to be collected. Will not be used when &#x60;instant&#x60; is used.  | [optional] 
**settle** | [**Settle**](Settle.md) | Optional settle to perform after creation using a different payment method. If the settle fails the status will be &#x60;failed&#x60; if instant or &#x60;pending&#x60; if not instant. The &#x60;due&#x60; date will be ignored for subscription invoice create. | [optional] 
**plan_manual** | **BOOLEAN** | Create manually for plan by adding plan product and potential add-ons as order line (default false) | [optional] 
**collect_additional_costs** | **BOOLEAN** | Collect pending additional costs and transfer to invoice (default true) | [optional] 
**collect_credit** | **BOOLEAN** | Collect pending credit and transfer to invoice (default true) | [optional] 
**apply_discounts** | **BOOLEAN** | Apply potential discounts for the subscription to the invoice order lines (default true) | [optional] 
**order_lines** | [**Array&lt;CreateOrderLine&gt;**](CreateOrderLine.md) | Optional additional order lines for the invoice | [optional] 
**manual_transfer** | [**ManualSettleTransfer**](ManualSettleTransfer.md) | Optional manual transfer. If given the invoice will be settled using the manual transfer transaction. | [optional] 
**billing_address** | [**InvoiceBillingAddress**](InvoiceBillingAddress.md) | Optional billing address | [optional] 
**shipping_address** | [**InvoiceShippingAddress**](InvoiceShippingAddress.md) | Optional shipping address | [optional] 


