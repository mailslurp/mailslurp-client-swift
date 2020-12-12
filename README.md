# Swift5 API client for mailslurp

MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more. 

## Resources
- [Homepage](https://www.mailslurp.com)
- Get an [API KEY](https://app.mailslurp.com/sign-up/)
- Generated [SDK Clients](https://www.mailslurp.com/docs/)
- [Examples](https://github.com/mailslurp/examples) repository


## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://github.com/OAI/OpenAPI-Specification) from a remote server, you can easily generate an API client.

- API version: 6.5.2
- Package version: 
- Build package: org.openapitools.codegen.languages.Swift5ClientCodegen

## Installation

### Carthage

Run `carthage update`

### CocoaPods

Run `pod install`

## Documentation for API Endpoints

All URIs are relative to *https://api.mailslurp.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AliasControllerAPI* | [**createAlias**](docs/AliasControllerAPI.md#createalias) | **POST** /aliases | Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.
*AliasControllerAPI* | [**deleteAlias**](docs/AliasControllerAPI.md#deletealias) | **DELETE** /aliases/{aliasId} | Delete an email alias
*AliasControllerAPI* | [**getAlias**](docs/AliasControllerAPI.md#getalias) | **GET** /aliases/{aliasId} | Get an email alias
*AliasControllerAPI* | [**getAliasVerification**](docs/AliasControllerAPI.md#getaliasverification) | **GET** /aliases/{aliasId}/verification | Get validation result from alias verification
*AliasControllerAPI* | [**getAliases**](docs/AliasControllerAPI.md#getaliases) | **GET** /aliases | Get all email aliases you have created
*AliasControllerAPI* | [**updateAlias**](docs/AliasControllerAPI.md#updatealias) | **PUT** /aliases/{aliasId} | Update an email alias
*AttachmentControllerAPI* | [**uploadAttachment**](docs/AttachmentControllerAPI.md#uploadattachment) | **POST** /attachments | Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
*AttachmentControllerAPI* | [**uploadAttachmentBytes**](docs/AttachmentControllerAPI.md#uploadattachmentbytes) | **POST** /attachments/bytes | Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
*AttachmentControllerAPI* | [**uploadMultipartForm**](docs/AttachmentControllerAPI.md#uploadmultipartform) | **POST** /attachments/multipart | Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.
*BulkActionsControllerAPI* | [**bulkCreateInboxes**](docs/BulkActionsControllerAPI.md#bulkcreateinboxes) | **POST** /bulk/inboxes | Bulk create Inboxes (email addresses)
*BulkActionsControllerAPI* | [**bulkDeleteInboxes**](docs/BulkActionsControllerAPI.md#bulkdeleteinboxes) | **DELETE** /bulk/inboxes | Bulk Delete Inboxes
*BulkActionsControllerAPI* | [**bulkSendEmails**](docs/BulkActionsControllerAPI.md#bulksendemails) | **POST** /bulk/send | Bulk Send Emails
*CommonActionsControllerAPI* | [**createNewEmailAddress**](docs/CommonActionsControllerAPI.md#createnewemailaddress) | **POST** /createInbox | Create new random inbox
*CommonActionsControllerAPI* | [**createNewEmailAddress1**](docs/CommonActionsControllerAPI.md#createnewemailaddress1) | **POST** /newEmailAddress | Create new random inbox
*CommonActionsControllerAPI* | [**emptyInbox**](docs/CommonActionsControllerAPI.md#emptyinbox) | **DELETE** /emptyInbox | Delete all emails in an inbox
*CommonActionsControllerAPI* | [**sendEmailSimple**](docs/CommonActionsControllerAPI.md#sendemailsimple) | **POST** /sendEmail | Send an email
*ContactControllerAPI* | [**createContact**](docs/ContactControllerAPI.md#createcontact) | **POST** /contacts | Create a contact
*ContactControllerAPI* | [**deleteContact**](docs/ContactControllerAPI.md#deletecontact) | **DELETE** /contacts/{contactId} | Delete contact
*ContactControllerAPI* | [**getAllContacts**](docs/ContactControllerAPI.md#getallcontacts) | **GET** /contacts/paginated | Get all contacts
*ContactControllerAPI* | [**getContact**](docs/ContactControllerAPI.md#getcontact) | **GET** /contacts/{contactId} | Get contact
*ContactControllerAPI* | [**getContacts**](docs/ContactControllerAPI.md#getcontacts) | **GET** /contacts | Get all contacts
*DomainControllerAPI* | [**createDomain**](docs/DomainControllerAPI.md#createdomain) | **POST** /domains | Create Domain
*DomainControllerAPI* | [**deleteDomain**](docs/DomainControllerAPI.md#deletedomain) | **DELETE** /domains/{id} | Delete a domain
*DomainControllerAPI* | [**getDomain**](docs/DomainControllerAPI.md#getdomain) | **GET** /domains/{id} | Get a domain
*DomainControllerAPI* | [**getDomains**](docs/DomainControllerAPI.md#getdomains) | **GET** /domains | Get domains
*EmailControllerAPI* | [**deleteAllEmails**](docs/EmailControllerAPI.md#deleteallemails) | **DELETE** /emails | Delete all emails
*EmailControllerAPI* | [**deleteEmail**](docs/EmailControllerAPI.md#deleteemail) | **DELETE** /emails/{emailId} | Delete an email
*EmailControllerAPI* | [**downloadAttachment**](docs/EmailControllerAPI.md#downloadattachment) | **GET** /emails/{emailId}/attachments/{attachmentId} | Get email attachment bytes. If you have trouble with byte responses try the &#x60;downloadAttachmentBase64&#x60; response endpoints.
*EmailControllerAPI* | [**downloadAttachmentBase64**](docs/EmailControllerAPI.md#downloadattachmentbase64) | **GET** /emails/{emailId}/attachments/{attachmentId}/base64 | Get email attachment as base64 encoded string (alternative to binary responses)
*EmailControllerAPI* | [**forwardEmail**](docs/EmailControllerAPI.md#forwardemail) | **POST** /emails/{emailId}/forward | Forward email
*EmailControllerAPI* | [**getAttachmentMetaData**](docs/EmailControllerAPI.md#getattachmentmetadata) | **GET** /emails/{emailId}/attachments/{attachmentId}/metadata | Get email attachment metadata
*EmailControllerAPI* | [**getAttachments**](docs/EmailControllerAPI.md#getattachments) | **GET** /emails/{emailId}/attachments | Get all email attachment metadata
*EmailControllerAPI* | [**getEmail**](docs/EmailControllerAPI.md#getemail) | **GET** /emails/{emailId} | Get email content
*EmailControllerAPI* | [**getEmailContentMatch**](docs/EmailControllerAPI.md#getemailcontentmatch) | **POST** /emails/{emailId}/contentMatch | Get email content regex pattern match results. Runs regex against email body and returns match groups.
*EmailControllerAPI* | [**getEmailHTML**](docs/EmailControllerAPI.md#getemailhtml) | **GET** /emails/{emailId}/html | Get email content as HTML
*EmailControllerAPI* | [**getEmailsPaginated**](docs/EmailControllerAPI.md#getemailspaginated) | **GET** /emails | Get all emails
*EmailControllerAPI* | [**getRawEmailContents**](docs/EmailControllerAPI.md#getrawemailcontents) | **GET** /emails/{emailId}/raw | Get raw email string
*EmailControllerAPI* | [**getRawEmailJson**](docs/EmailControllerAPI.md#getrawemailjson) | **GET** /emails/{emailId}/raw/json | Get raw email in JSON
*EmailControllerAPI* | [**getUnreadEmailCount**](docs/EmailControllerAPI.md#getunreademailcount) | **GET** /emails/unreadCount | Get unread email count
*EmailControllerAPI* | [**replyToEmail**](docs/EmailControllerAPI.md#replytoemail) | **PUT** /emails/{emailId} | Reply to an email
*EmailControllerAPI* | [**validateEmail**](docs/EmailControllerAPI.md#validateemail) | **POST** /emails/{emailId}/validate | Validate email
*FormControllerAPI* | [**submitForm**](docs/FormControllerAPI.md#submitform) | **POST** /forms | Submit a form to be parsed and sent as an email to an address determined by the form fields
*GroupControllerAPI* | [**addContactsToGroup**](docs/GroupControllerAPI.md#addcontactstogroup) | **PUT** /groups/{groupId}/contacts | Add contacts to a group
*GroupControllerAPI* | [**createGroup**](docs/GroupControllerAPI.md#creategroup) | **POST** /groups | Create a group
*GroupControllerAPI* | [**deleteGroup**](docs/GroupControllerAPI.md#deletegroup) | **DELETE** /groups/{groupId} | Delete group
*GroupControllerAPI* | [**getAllGroups**](docs/GroupControllerAPI.md#getallgroups) | **GET** /groups/paginated | Get all Contact Groups in paginated format
*GroupControllerAPI* | [**getGroup**](docs/GroupControllerAPI.md#getgroup) | **GET** /groups/{groupId} | Get group
*GroupControllerAPI* | [**getGroupWithContacts**](docs/GroupControllerAPI.md#getgroupwithcontacts) | **GET** /groups/{groupId}/contacts | Get group and contacts belonging to it
*GroupControllerAPI* | [**getGroupWithContactsPaginated**](docs/GroupControllerAPI.md#getgroupwithcontactspaginated) | **GET** /groups/{groupId}/contacts-paginated | Get group and paginated contacts belonging to it
*GroupControllerAPI* | [**getGroups**](docs/GroupControllerAPI.md#getgroups) | **GET** /groups | Get all groups
*GroupControllerAPI* | [**removeContactsFromGroup**](docs/GroupControllerAPI.md#removecontactsfromgroup) | **DELETE** /groups/{groupId}/contacts | Remove contacts from a group
*InboxControllerAPI* | [**createInbox**](docs/InboxControllerAPI.md#createinbox) | **POST** /inboxes | Create an Inbox (email address)
*InboxControllerAPI* | [**createInboxWithOptions**](docs/InboxControllerAPI.md#createinboxwithoptions) | **POST** /inboxes/withOptions | Create an inbox with additional options
*InboxControllerAPI* | [**deleteAllInboxes**](docs/InboxControllerAPI.md#deleteallinboxes) | **DELETE** /inboxes | Delete all inboxes
*InboxControllerAPI* | [**deleteInbox**](docs/InboxControllerAPI.md#deleteinbox) | **DELETE** /inboxes/{inboxId} | Delete inbox
*InboxControllerAPI* | [**getAllInboxes**](docs/InboxControllerAPI.md#getallinboxes) | **GET** /inboxes/paginated | List All Inboxes Paginated
*InboxControllerAPI* | [**getEmails**](docs/InboxControllerAPI.md#getemails) | **GET** /inboxes/{inboxId}/emails | Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead.
*InboxControllerAPI* | [**getInbox**](docs/InboxControllerAPI.md#getinbox) | **GET** /inboxes/{inboxId} | Get Inbox
*InboxControllerAPI* | [**getInboxEmailsPaginated**](docs/InboxControllerAPI.md#getinboxemailspaginated) | **GET** /inboxes/{inboxId}/emails/paginated | Get inbox emails paginated
*InboxControllerAPI* | [**getInboxSentEmails**](docs/InboxControllerAPI.md#getinboxsentemails) | **GET** /inboxes/{inboxId}/sent | Get Inbox Sent Emails
*InboxControllerAPI* | [**getInboxTags**](docs/InboxControllerAPI.md#getinboxtags) | **GET** /inboxes/tags | Get inbox tags
*InboxControllerAPI* | [**getInboxes**](docs/InboxControllerAPI.md#getinboxes) | **GET** /inboxes | List Inboxes / Email Addresses
*InboxControllerAPI* | [**sendEmail**](docs/InboxControllerAPI.md#sendemail) | **POST** /inboxes/{inboxId} | Send Email
*InboxControllerAPI* | [**sendEmailAndConfirm**](docs/InboxControllerAPI.md#sendemailandconfirm) | **POST** /inboxes/{inboxId}/confirm | Send email and return sent confirmation
*InboxControllerAPI* | [**setInboxFavourited**](docs/InboxControllerAPI.md#setinboxfavourited) | **PUT** /inboxes/{inboxId}/favourite | Set inbox favourited state
*InboxControllerAPI* | [**updateInbox**](docs/InboxControllerAPI.md#updateinbox) | **PATCH** /inboxes/{inboxId} | Update Inbox
*MailServerControllerAPI* | [**describeMailServerDomain**](docs/MailServerControllerAPI.md#describemailserverdomain) | **POST** /mail-server/describe/domain | Get DNS Mail Server records for a domain
*MailServerControllerAPI* | [**getDnsLookup**](docs/MailServerControllerAPI.md#getdnslookup) | **POST** /mail-server/describe/dns-lookup | Lookup DNS records for a domain
*MailServerControllerAPI* | [**getIpAddress**](docs/MailServerControllerAPI.md#getipaddress) | **POST** /mail-server/describe/ip-address | Get IP address for a domain
*MailServerControllerAPI* | [**verifyEmailAddress**](docs/MailServerControllerAPI.md#verifyemailaddress) | **POST** /mail-server/verify/email-address | Verify the existence of an email address at a given mail server.
*SentEmailsControllerAPI* | [**getSentEmail**](docs/SentEmailsControllerAPI.md#getsentemail) | **GET** /sent/{id} | Get sent email receipt
*SentEmailsControllerAPI* | [**getSentEmails**](docs/SentEmailsControllerAPI.md#getsentemails) | **GET** /sent | Get all sent emails in paginated form
*TemplateControllerAPI* | [**createTemplate**](docs/TemplateControllerAPI.md#createtemplate) | **POST** /templates | Create a Template
*TemplateControllerAPI* | [**deleteTemplate**](docs/TemplateControllerAPI.md#deletetemplate) | **DELETE** /templates/{TemplateId} | Delete Template
*TemplateControllerAPI* | [**getAllTemplates**](docs/TemplateControllerAPI.md#getalltemplates) | **GET** /templates/paginated | Get all Templates in paginated format
*TemplateControllerAPI* | [**getTemplate**](docs/TemplateControllerAPI.md#gettemplate) | **GET** /templates/{TemplateId} | Get Template
*TemplateControllerAPI* | [**getTemplates**](docs/TemplateControllerAPI.md#gettemplates) | **GET** /templates | Get all Templates
*WaitForControllerAPI* | [**waitFor**](docs/WaitForControllerAPI.md#waitfor) | **POST** /waitFor | Wait for conditions to be met
*WaitForControllerAPI* | [**waitForEmailCount**](docs/WaitForControllerAPI.md#waitforemailcount) | **GET** /waitForEmailCount | Wait for and return count number of emails 
*WaitForControllerAPI* | [**waitForLatestEmail**](docs/WaitForControllerAPI.md#waitforlatestemail) | **GET** /waitForLatestEmail | Fetch inbox&#39;s latest email or if empty wait for an email to arrive
*WaitForControllerAPI* | [**waitForMatchingEmail**](docs/WaitForControllerAPI.md#waitformatchingemail) | **POST** /waitForMatchingEmails | Wait or return list of emails that match simple matching patterns
*WaitForControllerAPI* | [**waitForNthEmail**](docs/WaitForControllerAPI.md#waitfornthemail) | **GET** /waitForNthEmail | Wait for or fetch the email with a given index in the inbox specified
*WebhookControllerAPI* | [**createWebhook**](docs/WebhookControllerAPI.md#createwebhook) | **POST** /inboxes/{inboxId}/webhooks | Attach a WebHook URL to an inbox
*WebhookControllerAPI* | [**deleteWebhook**](docs/WebhookControllerAPI.md#deletewebhook) | **DELETE** /inboxes/{inboxId}/webhooks/{webhookId} | Delete and disable a Webhook for an Inbox
*WebhookControllerAPI* | [**getAllWebhooks**](docs/WebhookControllerAPI.md#getallwebhooks) | **GET** /webhooks/paginated | List Webhooks Paginated
*WebhookControllerAPI* | [**getWebhook**](docs/WebhookControllerAPI.md#getwebhook) | **GET** /webhooks/{webhookId} | Get a webhook for an Inbox
*WebhookControllerAPI* | [**getWebhooks**](docs/WebhookControllerAPI.md#getwebhooks) | **GET** /inboxes/{inboxId}/webhooks | Get all Webhooks for an Inbox
*WebhookControllerAPI* | [**sendTestData**](docs/WebhookControllerAPI.md#sendtestdata) | **POST** /webhooks/{webhookId}/test | Send webhook test data


## Documentation For Models

 - [Alias](docs/Alias.md)
 - [AliasDto](docs/AliasDto.md)
 - [AliasProjection](docs/AliasProjection.md)
 - [AliasVerificationResult](docs/AliasVerificationResult.md)
 - [AttachmentMetaData](docs/AttachmentMetaData.md)
 - [BasicAuthOptions](docs/BasicAuthOptions.md)
 - [BulkSendEmailOptions](docs/BulkSendEmailOptions.md)
 - [ContactDto](docs/ContactDto.md)
 - [ContactProjection](docs/ContactProjection.md)
 - [ContentMatchOptions](docs/ContentMatchOptions.md)
 - [CreateAliasOptions](docs/CreateAliasOptions.md)
 - [CreateContactOptions](docs/CreateContactOptions.md)
 - [CreateDomainOptions](docs/CreateDomainOptions.md)
 - [CreateGroupOptions](docs/CreateGroupOptions.md)
 - [CreateInboxDto](docs/CreateInboxDto.md)
 - [CreateTemplateOptions](docs/CreateTemplateOptions.md)
 - [CreateWebhookOptions](docs/CreateWebhookOptions.md)
 - [DNSLookupOptions](docs/DNSLookupOptions.md)
 - [DNSLookupResult](docs/DNSLookupResult.md)
 - [DNSLookupResults](docs/DNSLookupResults.md)
 - [DescribeDomainOptions](docs/DescribeDomainOptions.md)
 - [DescribeMailServerDomainResult](docs/DescribeMailServerDomainResult.md)
 - [DomainDto](docs/DomainDto.md)
 - [DomainPreview](docs/DomainPreview.md)
 - [DownloadAttachmentDto](docs/DownloadAttachmentDto.md)
 - [Email](docs/Email.md)
 - [EmailAnalysis](docs/EmailAnalysis.md)
 - [EmailContentMatchResult](docs/EmailContentMatchResult.md)
 - [EmailPreview](docs/EmailPreview.md)
 - [EmailProjection](docs/EmailProjection.md)
 - [EmailVerificationResult](docs/EmailVerificationResult.md)
 - [ForwardEmailOptions](docs/ForwardEmailOptions.md)
 - [GroupContactsDto](docs/GroupContactsDto.md)
 - [GroupDto](docs/GroupDto.md)
 - [GroupProjection](docs/GroupProjection.md)
 - [HTMLValidationResult](docs/HTMLValidationResult.md)
 - [IPAddressResult](docs/IPAddressResult.md)
 - [Inbox](docs/Inbox.md)
 - [InboxProjection](docs/InboxProjection.md)
 - [MatchOption](docs/MatchOption.md)
 - [MatchOptions](docs/MatchOptions.md)
 - [NameServerRecord](docs/NameServerRecord.md)
 - [PageAlias](docs/PageAlias.md)
 - [PageContactProjection](docs/PageContactProjection.md)
 - [PageEmailPreview](docs/PageEmailPreview.md)
 - [PageEmailProjection](docs/PageEmailProjection.md)
 - [PageGroupProjection](docs/PageGroupProjection.md)
 - [PageInboxProjection](docs/PageInboxProjection.md)
 - [PageSentEmailProjection](docs/PageSentEmailProjection.md)
 - [PageTemplateProjection](docs/PageTemplateProjection.md)
 - [PageWebhookProjection](docs/PageWebhookProjection.md)
 - [Pageable](docs/Pageable.md)
 - [RawEmailJson](docs/RawEmailJson.md)
 - [ReplyToEmailOptions](docs/ReplyToEmailOptions.md)
 - [SendEmailOptions](docs/SendEmailOptions.md)
 - [SentEmailDto](docs/SentEmailDto.md)
 - [SentEmailProjection](docs/SentEmailProjection.md)
 - [SetInboxFavouritedOptions](docs/SetInboxFavouritedOptions.md)
 - [SimpleSendEmailOptions](docs/SimpleSendEmailOptions.md)
 - [Sort](docs/Sort.md)
 - [TemplateDto](docs/TemplateDto.md)
 - [TemplateProjection](docs/TemplateProjection.md)
 - [TemplateVariable](docs/TemplateVariable.md)
 - [UnreadCount](docs/UnreadCount.md)
 - [UpdateAliasOptions](docs/UpdateAliasOptions.md)
 - [UpdateGroupContacts](docs/UpdateGroupContacts.md)
 - [UpdateInboxOptions](docs/UpdateInboxOptions.md)
 - [UploadAttachmentOptions](docs/UploadAttachmentOptions.md)
 - [ValidationDto](docs/ValidationDto.md)
 - [ValidationMessage](docs/ValidationMessage.md)
 - [VerifyEmailAddressOptions](docs/VerifyEmailAddressOptions.md)
 - [WaitForConditions](docs/WaitForConditions.md)
 - [WebhookDto](docs/WebhookDto.md)
 - [WebhookProjection](docs/WebhookProjection.md)
 - [WebhookTestRequest](docs/WebhookTestRequest.md)
 - [WebhookTestResponse](docs/WebhookTestResponse.md)
 - [WebhookTestResult](docs/WebhookTestResult.md)


## Documentation For Authorization


## API_KEY

- **Type**: API key
- **API key parameter name**: x-api-key
- **Location**: HTTP header


## Author



