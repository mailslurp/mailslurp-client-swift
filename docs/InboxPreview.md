# InboxPreview

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **UUID** | ID of the inbox. The ID is a UUID-V4 format string. Use the inboxId for calls to Inbox and Email Controller endpoints. See the emailAddress property for the email address or the inbox. To get emails in an inbox use the WaitFor and Inbox Controller methods &#x60;waitForLatestEmail&#x60; and &#x60;getEmails&#x60; methods respectively. Inboxes can be used with aliases to forward emails automatically. | 
**domainId** | **UUID** | ID of custom domain used by the inbox if any | [optional] 
**emailAddress** | **String** | The inbox&#39;s email address. Inbox projections and previews may not include the email address. To view the email address fetch the inbox entity directly. Send an email to this address and the inbox will receive and store it for you. Note the email address in MailSlurp match characters exactly and are case sensitive so &#x60;+123&#x60; additions are considered different addresses. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID. | 
**createdAt** | **Date** | When the inbox was created. Time stamps are in ISO DateTime Format &#x60;yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSSXXX&#x60; e.g. &#x60;2000-10-31T01:30:00.000-05:00&#x60;. | 
**favourite** | **Bool** | Is the inbox a favorite inbox. Make an inbox a favorite is typically done in the dashboard for quick access or filtering | 
**name** | **String** | Name of the inbox and used as the sender name when sending emails .Displayed in the dashboard for easier search | [optional] 
**tags** | **[String]** | Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI. | [optional] 
**teamAccess** | **Bool** | Does inbox permit team access for organization team members. If so team users can use inbox and emails associated with it. See the team access guide at https://www.mailslurp.com/guides/team-email-account-sharing/ | 
**inboxType** | **String** | Type of inbox. HTTP inboxes are faster and better for most cases. SMTP inboxes are more suited for public facing inbound messages (but cannot send). | [optional] 
**virtualInbox** | **Bool** | Virtual inbox can receive email but will not send emails to real recipients. Will save sent email record but never send an actual email. Perfect for testing mail server actions. | 
**expiresAt** | **Date** | Inbox expiration time. When, if ever, the inbox should expire and be deleted. If null then this inbox is permanent and the emails in it won&#39;t be deleted. This is the default behavior unless expiration date is set. If an expiration date is set and the time is reached MailSlurp will expire the inbox and move it to an expired inbox entity. You can still access the emails belonging to it but it can no longer send or receive email. | [optional] 
**functionsAs** | **String** | Inbox function if used as a primitive for another system. | [optional] 
**userId** | **UUID** | ID of user that inbox belongs to | 
**_description** | **String** | Description of an inbox for labelling and searching purposes | [optional] 
**accountRegion** | **String** | Region of the inbox | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


