# ReplyToEmailOptions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachments** | **[String]** | List of uploaded attachments to send with the reply. Optional. | [optional] 
**body** | **String** | Body of the reply email you want to send | [optional] 
**charset** | **String** | The charset that your message should be sent with. Optional. Default is UTF-8 | [optional] 
**from** | **String** | The from header that should be used. Optional | [optional] 
**isHTML** | **Bool** | Is the reply HTML | [optional] 
**replyTo** | **String** | The replyTo header that should be used. Optional | [optional] 
**sendStrategy** | **String** | When to send the email. Typically immediately | [optional] 
**template** | **UUID** | Template ID to use instead of body. Will use template variable map to fill defined variable slots. | [optional] 
**templateVariables** | [**Any**](.md) | Template variables if using a template | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

