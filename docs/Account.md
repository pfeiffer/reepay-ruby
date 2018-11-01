# Reepay::Account

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**handle** | **String** | Per organisation unique handle for the account | 
**currency** | **String** | Currency for the account in [ISO 4217](http://da.wikipedia.org/wiki/ISO_4217) three letter alpha code | 
**name** | **String** | Account name | 
**address** | **String** | Account address | [optional] 
**address2** | **String** | Account address2 | [optional] 
**city** | **String** | Account city | [optional] 
**locale** | **String** | Account locale on the form &#39;language_country&#39; | 
**timezone** | **String** | Account time zone ID as abbreviation or full name. See [Wikipedia](http://en.wikipedia.org/wiki/List_of_tz_database_time_zones) | 
**country** | **String** | Account country in [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) | 
**email** | **String** | Account email | [optional] 
**phone** | **String** | Account phone | [optional] 
**vat** | **String** | Account vat number | [optional] 
**website** | **String** | Account website | [optional] 
**logo** | **String** | Account logo url | [optional] 
**id** | **String** | Account id assigned by Reepay | 
**organisation** | **String** | Organisation by subdomain | 
**created** | **DateTime** | Date when the account was created. In [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | 
**state** | **String** | Status of the account one of the following &#x60;test&#x60;, &#x60;live&#x60;, &#x60;closed&#x60;, &#x60;demo&#x60;. | 
**postal_code** | **String** | Account postal code | [optional] 
**default_vat** | **Float** | Default vat for account | 


