# Reepay::CreateDunningPlan

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Dunning plan name | 
**schedule** | **Array&lt;Integer&gt;** | The schedule as list of intervals in days | 
**handle** | **String** | Per account unique handle for the customer. Max length 255 with allowable characters [a-zA-Z0-9_.-@]. | 
**default_plan** | **BOOLEAN** | If this is default plan | 
**final_subscription_action** | **String** | Action to take for subscription if dunning fails, one of the following: &#x60;expire&#x60;, &#x60;on_hold&#x60;, &#x60;none&#x60; | 


