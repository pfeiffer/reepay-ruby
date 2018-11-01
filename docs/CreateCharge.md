# Reepay::CreateCharge

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**handle** | **String** | Per account unique reference to charge/invoice. E.g. order id from own system. Multiple payments can be attempted for the same handle but only one authorized or settled charge can exist per handle. Max length 255 with allowable characters [a-zA-Z0-9_.-@]. It is recommended to use a maximum of 20 characters as this will allow for the use of handle as reference on bank statements without truncation. | 
**key** | **String** | Optional idempotency key. Only one authorization or settle can be performed for the same handle. If two create attempts are attempted and the first succeeds the second will fail because charge is already settled or authorized. An idempotency key identifies uniquely the request and multiple requests with the same key and handle will yield the same result. In case of networking errors the same request with same key can safely be retried. | [optional] 
**amount** | **Integer** | Amount in the smallest unit for the account currency. Either &#x60;amount&#x60; or &#x60;order_lines&#x60; must be provided if charge/invoice does not already exists. | [optional] 
**currency** | **String** | Optional currency in [ISO 4217](http://da.wikipedia.org/wiki/ISO_4217) three letter alpha code. If not provided the account default currency will be used. The currency of an existing charge or invoice cannot be changed. | [optional] 
**customer** | [**CreateCustomer**](CreateCustomer.md) | Optional create customer object. An alternative to using a reference to an already created customer. If this object is provided and the customer already exists, the customer will be updated with the information provided in this object. Notice that customer cannot be changed for existing charge/invoice so if handle is given it must match the customer handle for existing customer. | [optional] 
**source** | **String** | The source for the payment. Either an existing payment method for the customer, e.g. &#x60;ca_...&#x60; or a card token &#x60;ct_...&#x60; generated with [Reepay Token](https://docs.reepay.com/token/) or [Reepay JS Library](https://docs.reepay.com/js/). | 
**settle** | **BOOLEAN** | Whether or not to immediately settle the charge. If not settled immediately the charge will be authorized and can later be settled. Normally this have to be done within 7 days. **NB** The current default is to settle immediately, but this will be reversed by the end of November. For now it is recommended to always explicitly set &#x60;settle&#x60;. | [optional] 
**recurring** | **BOOLEAN** | If set and the source is a token for a payment method that supports recurring charging (e.g. credit card), a recurring payment method is stored for the customer and a reference returned. | [optional] 
**ordertext** | **String** | Optional order text. Used in conjunction with &#x60;amount&#x60;. Ignored if &#x60;order_lines&#x60; is provided. | [optional] 
**order_lines** | [**Array&lt;CreateOrderLine&gt;**](CreateOrderLine.md) | Order lines for the charge. The order lines controls the amount. Only required if charge/invoice does not already exist. If given for existing charge the order lines and amount are adjusted. | [optional] 
**customer_handle** | **String** | Customer reference. If charge does not already exist either this reference must be provided or a create customer object must be provided. . | [optional] 
**billing_address** | [**InvoiceBillingAddress**](InvoiceBillingAddress.md) | Optional billing address | [optional] 
**shipping_address** | [**InvoiceShippingAddress**](InvoiceShippingAddress.md) | Optional shipping address | [optional] 


