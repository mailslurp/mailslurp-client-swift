# UpdateInboxReplierOptions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**inboxId** | **UUID** | Inbox ID to attach replier to | 
**name** | **String** | Name for replier | [optional] 
**field** | **String** | Field to match against to trigger inbox replier for inbound email | 
**match** | **String** | String or wildcard style match for field specified when evaluating reply rules | 
**replyTo** | **String** | Reply-to email address when sending replying | [optional] 
**subject** | **String** | Subject override when replying to email | [optional] 
**from** | **String** | Send email from address | [optional] 
**charset** | **String** | Email reply charset | [optional] 
**isHTML** | **Bool** | Send HTML email | [optional] 
**ignoreReplyTo** | **Bool** | Ignore sender replyTo when responding. Send directly to the sender if enabled. | [optional] 
**body** | **String** | Email body for reply | [optional] 
**templateId** | **UUID** | ID of template to use when sending a reply | [optional] 
**templateVariables** | [String: AnyCodable] | Template variable values | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


