# DomainDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **UUID** |  | [optional] 
**userId** | **UUID** |  | [optional] 
**domain** | **String** | Custom domain name | [optional] 
**verificationToken** | **String** | Verification tokens | [optional] 
**dkimTokens** | **[String]** | Unique token DKIM tokens | [optional] 
**domainNameRecords** | [DomainNameRecord] | List of DNS domain name records (C, MX, TXT) etc that you must add to the DNS server associated with your domain provider. | [optional] 
**catchAllInboxId** | **UUID** | The optional catch all inbox that will receive emails sent to the domain that cannot be matched. | [optional] 
**createdAt** | **Date** |  | [optional] 
**updatedAt** | **Date** |  | [optional] 
**domainType** | **String** | Type of domain. Dictates type of inbox that can be created with domain. HTTP means inboxes are processed using SES while SMTP inboxes use a custom SMTP mail server. SMTP does not support sending so use HTTP for sending emails. | [optional] 
**verified** | **Bool** |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


