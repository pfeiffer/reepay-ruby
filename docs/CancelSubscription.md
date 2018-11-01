# Reepay::CancelSubscription

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**notice_periods** | **Integer** | Optional override of the notice periods set for plan. See plan for the definition of notice periods. | [optional] 
**notice_periods_after_current** | **BOOLEAN** | Optional override of the notice periods after current setting for plan. See plan for the definition of notice periods. | [optional] 
**expire_at** | **String** | Optional fixed date and time on when the subscription should expire. The fixed expire date takes precedence over notice periods and fixation periods. The fixed expire date must be after the end of the current periods. On the form &#x60;yyyy-MM-dd&#x60;, &#x60;yyyyMMdd&#x60;, &#x60;yyyy-MM-ddTHH:mm&#x60; and &#x60;yyyy-MM-ddTHH:mm:ss&#x60;. | [optional] 


