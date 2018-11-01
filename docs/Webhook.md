# Reepay::Webhook

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique webhook id assigned by Reepay | 
**event** | **String** | Event id of the event this webhook is for | 
**state** | **String** | The webhook state, one of the following: &#x60;pending&#x60;, &#x60;disabled&#x60;, &#x60;failed&#x60;, &#x60;completed&#x60; | 
**url** | **String** | Webhook url | 
**username** | **String** | Optional basic auth username | [optional] 
**password** | **String** | Optional basic auth password (masked) | [optional] 
**content** | **String** | JSON content of the webhook | 
**created** | **DateTime** | Creation date in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | 
**success** | **DateTime** | Date of successful invocation in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | [optional] 
**count** | **Integer** | Number of invocations performed | 
**last_fail** | **DateTime** | Date of last failed invocation in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | [optional] 
**first_fail** | **DateTime** | Date of first failed invocation in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | [optional] 
**alert_count** | **Integer** | Number of failed invocations before an alert email is sent | [optional] 
**alert_sent** | **DateTime** | Date when an optional alert email sending was requested in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | [optional] 


