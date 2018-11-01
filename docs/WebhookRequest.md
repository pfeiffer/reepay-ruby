# Reepay::WebhookRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique webhook id assigned by Reepay | 
**initiated** | **DateTime** | Date when the webhook request was initiated, in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | 
**duration** | **Integer** | Duration in milliseconds of request | 
**headers** | **String** | HTTP headers received, null if no response | [optional] 
**content** | **String** | Truncated content received, null if no response | [optional] 
**http_status** | **Integer** | HTTP status code received, null if no response | [optional] 


