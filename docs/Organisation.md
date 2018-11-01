# Reepay::Organisation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subdomain** | **String** | Organisation subdomain handle in Reepay. Must match [a-z0-9-] and maximum length 64. | 
**name** | **String** | Organisation name | 
**id** | **String** | Organisation id assigned by Reepay | 
**state** | **String** | Status of the organisation one of the following &#x60;signup&#x60;, &#x60;live&#x60; | 
**privileges** | **Array&lt;String&gt;** | Set of privileges for organisation | 
**created** | **DateTime** | Date when the organisation was created. In [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | 
**live_date** | **DateTime** | Date when the organisation went live. In [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format. | 


