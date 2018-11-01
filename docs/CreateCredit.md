# Reepay::CreateCredit

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subscription** | **String** | Subscription by handle to add the credit to | 
**handle** | **String** | Per account unique handle for the credit. Max length 255 with allowable characters [a-zA-Z0-9_.-@]. | 
**amount** | **Integer** | Credit amount in the smallest unit for the account currency | 
**text** | **String** | Text describing the credit. Will be on affected invoices. | 
**valid_from** | **String** | Date on the form yyyy-MM-dd from which the credit is valid. The credit will not be deducted from invoices before this date. | [optional] 


