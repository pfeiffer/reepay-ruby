# Reepay::ErrorResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **Integer** | Reepay API [error codes](https://api.reepay.com/v1/error_codes) | 
**error** | **String** | Short error message | 
**message** | **String** | Optional clarifying error message | [optional] 
**path** | **String** | The path generating the error response | 
**timestamp** | **DateTime** | Timestamp for the error response in ISO-8601 extended offset date-time format | 
**http_status** | **Integer** | HTTP status code of the error | 
**http_reason** | **String** | HTTP reason of the error | 
**request_id** | **String** | Request-Id for the failed request | 
**transaction_error** | **String** | Optional transaction error in the case the request involved a transaction processing. See [transaction errors](https://docs.reepay.com/api/#transaction-errors). | [optional] 


