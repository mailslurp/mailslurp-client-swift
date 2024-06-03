# ImapMailboxStatus

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The mailbox name. | 
**readOnly** | **Bool** | True if the mailbox is open in read-only mode. | 
**items** | [**AnyCodable**]() | Results map | 
**flags** | **[String]** | The mailbox flags. | 
**permanentFlags** | **[String]** | The mailbox permanent flags. | 
**unseenSeqNum** | **Int64** | The sequence number of the first unseen message in the mailbox. | 
**messages** | **Int** | The number of messages in this mailbox. | 
**recent** | **Int** | The number of messages not seen since the last time the mailbox was opened. | 
**unseen** | **Int** | The number of unread messages. | 
**uidNext** | **Int64** | The next UID. | 
**uidValidity** | **Int** | Together with a UID, it is a unique identifier for a message. Must be greater than or equal to 1. | 
**appendLimit** | **Int** | Per-mailbox limit of message size. Set only if server supports the APPENDLIMIT extension | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


