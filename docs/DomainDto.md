# DomainDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **UUID** |  | 
**userId** | **UUID** |  | 
**domain** | **String** | Custom domain name | 
**verificationToken** | **String** | Verification tokens | 
**dkimTokens** | **[String]** | Unique token DKIM tokens | 
**missingRecordsMessage** | **String** | If the domain is missing records then show which pairs are missing. | [optional] 
**hasMissingRecords** | **Bool** | Whether the domain has missing required records. If true then see the domain in the dashboard app. | 
**isVerified** | **Bool** | Whether domain has been verified or not. If the domain is not verified after 72 hours there is most likely an issue with the domains DNS records. | 
**domainNameRecords** | [DomainNameRecord] | List of DNS domain name records (C, MX, TXT) etc that you must add to the DNS server associated with your domain provider. | 
**catchAllInboxId** | **UUID** | The optional catch all inbox that will receive emails sent to the domain that cannot be matched. | [optional] 
**createdAt** | **Date** |  | 
**updatedAt** | **Date** |  | 
**domainType** | **String** | Type of domain. Dictates type of inbox that can be created with domain. HTTP means inboxes are processed using SES while SMTP inboxes use a custom SMTP mail server. SMTP does not support sending so use HTTP for sending emails. | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


