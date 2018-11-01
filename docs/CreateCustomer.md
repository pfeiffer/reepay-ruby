# Reepay::CreateCustomer

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** | Customer email | [optional] 
**address** | **String** | Customer address | [optional] 
**address2** | **String** | Customer address2 | [optional] 
**city** | **String** | Customer city | [optional] 
**country** | **String** | Customer country in ISO 3166-1 alpha-2 | [optional] 
**phone** | **String** | Customer phone number | [optional] 
**company** | **String** | Customer company | [optional] 
**vat** | **String** | Customer vat number | [optional] 
**handle** | **String** | Per account unique handle for the customer. Max length 255 with allowable characters [a-zA-Z0-9_.-@]. Must be provided if generate_handle is not defined. | [optional] 
**test** | **BOOLEAN** | Test flag. If given it will be verified that the account state matches the intended create state. | [optional] 
**first_name** | **String** | Customer first name | [optional] 
**last_name** | **String** | Customer last name | [optional] 
**postal_code** | **String** | Customer postal code | [optional] 
**generate_handle** | **BOOLEAN** | Auto generate handle on the form cust-[sequence_number] | [optional] 


