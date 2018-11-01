# Reepay::UpdateWebhookSettings

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**urls** | **Array&lt;String&gt;** | Webhook urls | 
**username** | **String** | Optional HTTP Basic Auth username | [optional] 
**password** | **String** | Optional HTTP Basic Auth password | [optional] 
**disabled** | **BOOLEAN** | Webhook disabled | 
**alert_emails** | **Array&lt;String&gt;** | Optional list of emails to send alert to if webhook fails | [optional] 
**alert_count** | **Integer** | Number of requests to perform before alert email is sent, must be greater than or equal to four (1 hour) | [optional] 


