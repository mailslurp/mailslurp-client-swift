# DomainDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**catchAllInboxId** | **UUID** | The optional catch all inbox that will receive emails sent to the domain that cannot be matched. | [optional] 
**createdAt** | **Date** |  | 
**dkimTokens** | **[String]** | Unique token DKIM tokens | [optional] 
**domain** | **String** | Custom domain name | [optional] 
**domainNameRecords** | [DomainNameRecord] | List of DNS domain name records (C, MX, TXT) etc that you must add to the DNS server associated with your domain provider. | [optional] 
**_id** | **UUID** |  | 
**isVerified** | **Bool** | Whether domain has been verified or not. If the domain is not verified after 72 hours there is most likely an issue with the domains DNS records. | [optional] 
**updatedAt** | **Date** |  | 
**userId** | **UUID** |  | 
**verificationToken** | **String** | Verification tokens | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


