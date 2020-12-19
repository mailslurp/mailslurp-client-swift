# DomainDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**createdAt** | **Date** |  | 
**dkimTokens** | **[String]** | DNS records for DKIM approval | [optional] 
**domain** | **String** | Custom domain name | [optional] 
**_id** | **UUID** |  | 
**isVerified** | **Bool** | Whether domain has been verified or not. If the domain is not verified after 72 hours there is most likely an issue with the domains DNS records. | [optional] 
**updatedAt** | **Date** |  | 
**userId** | **UUID** |  | 
**verificationToken** | **String** | A TXT record that you must place in the DNS settings of the domain to complete domain verification | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


