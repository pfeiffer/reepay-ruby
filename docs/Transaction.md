# Reepay::Transaction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Transaction id assigned by Reepay | 
**state** | **String** | State of the transaction, one of the following: &#x60;pending&#x60;, &#x60;processing&#x60;, &#x60;authorized&#x60;, &#x60;settled&#x60;, &#x60;refunded&#x60;, &#x60;failed&#x60;, &#x60;cancelled&#x60; | 
**invoice** | **String** | Invoice id | 
**type** | **String** | Transaction type, one of the following: &#39;settle&#39;, &#39;refund&#39;, &#x60;authorization&#x60; | 
**amount** | **Integer** | The transaction amount | 
**settled** | **DateTime** | When the transaction was settled, in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | [optional] 
**authorized** | **DateTime** | When the transaction was authorized, in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | [optional] 
**failed** | **DateTime** | When the transaction failed, in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | [optional] 
**refunded** | **DateTime** | When the transaction was refunded, in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | [optional] 
**created** | **DateTime** | Date when the transaction was created. In [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | 
**card_transaction** | [**CardTransaction**](CardTransaction.md) | Specifics in case of card transaction | [optional] 
**manual_transaction** | [**ManualTransaction**](ManualTransaction.md) | Specifics in case of manual transaction | [optional] 
**pgw_transaction** | [**PgwTransaction**](PgwTransaction.md) | Specifics in case of generic payment gateway transaction | [optional] 


