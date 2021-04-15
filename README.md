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
*AliasControllerAPI* | [**createAlias**](docs/AliasControllerAPI#createalias) | **POST** /aliases | Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.
*AliasControllerAPI* | [**deleteAlias**](docs/AliasControllerAPI#deletealias) | **DELETE** /aliases/{aliasId} | Delete an email alias
*AliasControllerAPI* | [**getAlias**](docs/AliasControllerAPI#getalias) | **GET** /aliases/{aliasId} | Get an email alias
*AliasControllerAPI* | [**getAliasEmails**](docs/AliasControllerAPI#getaliasemails) | **GET** /aliases/{aliasId}/emails | Get emails for an alias
*AliasControllerAPI* | [**getAliasThreads**](docs/AliasControllerAPI#getaliasthreads) | **GET** /aliases/{aliasId}/threads | Get threads created for an alias
*AliasControllerAPI* | [**getAliases**](docs/AliasControllerAPI#getaliases) | **GET** /aliases | Get all email aliases you have created
*AliasControllerAPI* | [**replyToAliasEmail**](docs/AliasControllerAPI#replytoaliasemail) | **PUT** /aliases/{aliasId}/emails/{emailId} | Reply to an email
*AliasControllerAPI* | [**sendAliasEmail**](docs/AliasControllerAPI#sendaliasemail) | **POST** /aliases/{aliasId}/emails | Send an email from an alias inbox
*AliasControllerAPI* | [**updateAlias**](docs/AliasControllerAPI#updatealias) | **PUT** /aliases/{aliasId} | Update an email alias
*AttachmentControllerAPI* | [**uploadAttachment**](docs/AttachmentControllerAPI#uploadattachment) | **POST** /attachments | Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
*AttachmentControllerAPI* | [**uploadAttachmentBytes**](docs/AttachmentControllerAPI#uploadattachmentbytes) | **POST** /attachments/bytes | Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
*AttachmentControllerAPI* | [**uploadMultipartForm**](docs/AttachmentControllerAPI#uploadmultipartform) | **POST** /attachments/multipart | Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.
*BulkActionsControllerAPI* | [**bulkCreateInboxes**](docs/BulkActionsControllerAPI#bulkcreateinboxes) | **POST** /bulk/inboxes | Bulk create Inboxes (email addresses)
*BulkActionsControllerAPI* | [**bulkDeleteInboxes**](docs/BulkActionsControllerAPI#bulkdeleteinboxes) | **DELETE** /bulk/inboxes | Bulk Delete Inboxes
*BulkActionsControllerAPI* | [**bulkSendEmails**](docs/BulkActionsControllerAPI#bulksendemails) | **POST** /bulk/send | Bulk Send Emails
*CommonActionsControllerAPI* | [**createNewEmailAddress**](docs/CommonActionsControllerAPI#createnewemailaddress) | **POST** /createInbox | Create new random inbox
*CommonActionsControllerAPI* | [**createNewEmailAddress1**](docs/CommonActionsControllerAPI#createnewemailaddress1) | **POST** /newEmailAddress | Create new random inbox
*CommonActionsControllerAPI* | [**emptyInbox**](docs/CommonActionsControllerAPI#emptyinbox) | **DELETE** /emptyInbox | Delete all emails in an inbox
*CommonActionsControllerAPI* | [**sendEmailSimple**](docs/CommonActionsControllerAPI#sendemailsimple) | **POST** /sendEmail | Send an email
*ContactControllerAPI* | [**createContact**](docs/ContactControllerAPI#createcontact) | **POST** /contacts | Create a contact
*ContactControllerAPI* | [**deleteContact**](docs/ContactControllerAPI#deletecontact) | **DELETE** /contacts/{contactId} | Delete contact
*ContactControllerAPI* | [**getAllContacts**](docs/ContactControllerAPI#getallcontacts) | **GET** /contacts/paginated | Get all contacts
*ContactControllerAPI* | [**getContact**](docs/ContactControllerAPI#getcontact) | **GET** /contacts/{contactId} | Get contact
*ContactControllerAPI* | [**getContacts**](docs/ContactControllerAPI#getcontacts) | **GET** /contacts | Get all contacts
*DomainControllerAPI* | [**addDomainWildcardCatchAll**](docs/DomainControllerAPI#adddomainwildcardcatchall) | **POST** /domains/{id}/wildcard | Add catch all wild card inbox to domain
*DomainControllerAPI* | [**createDomain**](docs/DomainControllerAPI#createdomain) | **POST** /domains | Create Domain
*DomainControllerAPI* | [**deleteDomain**](docs/DomainControllerAPI#deletedomain) | **DELETE** /domains/{id} | Delete a domain
*DomainControllerAPI* | [**getDomain**](docs/DomainControllerAPI#getdomain) | **GET** /domains/{id} | Get a domain
*DomainControllerAPI* | [**getDomains**](docs/DomainControllerAPI#getdomains) | **GET** /domains | Get domains
*DomainControllerAPI* | [**updateDomain**](docs/DomainControllerAPI#updatedomain) | **PUT** /domains/{id} | Update a domain
*EmailControllerAPI* | [**deleteAllEmails**](docs/EmailControllerAPI#deleteallemails) | **DELETE** /emails | Delete all emails
*EmailControllerAPI* | [**deleteEmail**](docs/EmailControllerAPI#deleteemail) | **DELETE** /emails/{emailId} | Delete an email
*EmailControllerAPI* | [**downloadAttachment**](docs/EmailControllerAPI#downloadattachment) | **GET** /emails/{emailId}/attachments/{attachmentId} | Get email attachment bytes. If you have trouble with byte responses try the &#x60;downloadAttachmentBase64&#x60; response endpoints.
*EmailControllerAPI* | [**downloadAttachmentBase64**](docs/EmailControllerAPI#downloadattachmentbase64) | **GET** /emails/{emailId}/attachments/{attachmentId}/base64 | Get email attachment as base64 encoded string (alternative to binary responses)
*EmailControllerAPI* | [**forwardEmail**](docs/EmailControllerAPI#forwardemail) | **POST** /emails/{emailId}/forward | Forward email
*EmailControllerAPI* | [**getAttachmentMetaData**](docs/EmailControllerAPI#getattachmentmetadata) | **GET** /emails/{emailId}/attachments/{attachmentId}/metadata | Get email attachment metadata
*EmailControllerAPI* | [**getAttachments**](docs/EmailControllerAPI#getattachments) | **GET** /emails/{emailId}/attachments | Get all email attachment metadata
*EmailControllerAPI* | [**getEmail**](docs/EmailControllerAPI#getemail) | **GET** /emails/{emailId} | Get email content
*EmailControllerAPI* | [**getEmailContentMatch**](docs/EmailControllerAPI#getemailcontentmatch) | **POST** /emails/{emailId}/contentMatch | Get email content regex pattern match results. Runs regex against email body and returns match groups.
*EmailControllerAPI* | [**getEmailHTML**](docs/EmailControllerAPI#getemailhtml) | **GET** /emails/{emailId}/html | Get email content as HTML
*EmailControllerAPI* | [**getEmailHTMLQuery**](docs/EmailControllerAPI#getemailhtmlquery) | **GET** /emails/{emailId}/htmlQuery | Parse and return text from an email, stripping HTML and decoding encoded characters
*EmailControllerAPI* | [**getEmailTextLines**](docs/EmailControllerAPI#getemailtextlines) | **GET** /emails/{emailId}/textLines | Parse and return text from an email, stripping HTML and decoding encoded characters
*EmailControllerAPI* | [**getEmailsPaginated**](docs/EmailControllerAPI#getemailspaginated) | **GET** /emails | Get all emails
*EmailControllerAPI* | [**getLatestEmail**](docs/EmailControllerAPI#getlatestemail) | **GET** /emails/latest | Get latest email
*EmailControllerAPI* | [**getLatestEmailInInbox**](docs/EmailControllerAPI#getlatestemailininbox) | **GET** /emails/latestIn | Get latest email
*EmailControllerAPI* | [**getOrganizationEmailsPaginated**](docs/EmailControllerAPI#getorganizationemailspaginated) | **GET** /emails/organization | Get all organization emails
*EmailControllerAPI* | [**getRawEmailContents**](docs/EmailControllerAPI#getrawemailcontents) | **GET** /emails/{emailId}/raw | Get raw email string
*EmailControllerAPI* | [**getRawEmailJson**](docs/EmailControllerAPI#getrawemailjson) | **GET** /emails/{emailId}/raw/json | Get raw email in JSON
*EmailControllerAPI* | [**getUnreadEmailCount**](docs/EmailControllerAPI#getunreademailcount) | **GET** /emails/unreadCount | Get unread email count
*EmailControllerAPI* | [**replyToEmail**](docs/EmailControllerAPI#replytoemail) | **PUT** /emails/{emailId} | Reply to an email
*EmailControllerAPI* | [**validateEmail**](docs/EmailControllerAPI#validateemail) | **POST** /emails/{emailId}/validate | Validate email
*ExpiredControllerAPI* | [**getExpirationDefaults**](docs/ExpiredControllerAPI#getexpirationdefaults) | **GET** /expired/defaults | Get default expiration settings
*ExpiredControllerAPI* | [**getExpiredInboxByInboxId**](docs/ExpiredControllerAPI#getexpiredinboxbyinboxid) | **GET** /expired/inbox/{inboxId} | Get expired inbox record for a previously existing inbox
*ExpiredControllerAPI* | [**getExpiredInboxRecord**](docs/ExpiredControllerAPI#getexpiredinboxrecord) | **GET** /expired/{expiredId} | Get an expired inbox record
*ExpiredControllerAPI* | [**getExpiredInboxes**](docs/ExpiredControllerAPI#getexpiredinboxes) | **GET** /expired | List records of expired inboxes
*FormControllerAPI* | [**submitForm**](docs/FormControllerAPI#submitform) | **POST** /forms | Submit a form to be parsed and sent as an email to an address determined by the form fields
*GroupControllerAPI* | [**addContactsToGroup**](docs/GroupControllerAPI#addcontactstogroup) | **PUT** /groups/{groupId}/contacts | Add contacts to a group
*GroupControllerAPI* | [**createGroup**](docs/GroupControllerAPI#creategroup) | **POST** /groups | Create a group
*GroupControllerAPI* | [**deleteGroup**](docs/GroupControllerAPI#deletegroup) | **DELETE** /groups/{groupId} | Delete group
*GroupControllerAPI* | [**getAllGroups**](docs/GroupControllerAPI#getallgroups) | **GET** /groups/paginated | Get all Contact Groups in paginated format
*GroupControllerAPI* | [**getGroup**](docs/GroupControllerAPI#getgroup) | **GET** /groups/{groupId} | Get group
*GroupControllerAPI* | [**getGroupWithContacts**](docs/GroupControllerAPI#getgroupwithcontacts) | **GET** /groups/{groupId}/contacts | Get group and contacts belonging to it
*GroupControllerAPI* | [**getGroupWithContactsPaginated**](docs/GroupControllerAPI#getgroupwithcontactspaginated) | **GET** /groups/{groupId}/contacts-paginated | Get group and paginated contacts belonging to it
*GroupControllerAPI* | [**getGroups**](docs/GroupControllerAPI#getgroups) | **GET** /groups | Get all groups
*GroupControllerAPI* | [**removeContactsFromGroup**](docs/GroupControllerAPI#removecontactsfromgroup) | **DELETE** /groups/{groupId}/contacts | Remove contacts from a group
*InboxControllerAPI* | [**createInbox**](docs/InboxControllerAPI#createinbox) | **POST** /inboxes | Create an Inbox (email address)
*InboxControllerAPI* | [**createInboxWithOptions**](docs/InboxControllerAPI#createinboxwithoptions) | **POST** /inboxes/withOptions | Create an inbox with additional options
*InboxControllerAPI* | [**deleteAllInboxes**](docs/InboxControllerAPI#deleteallinboxes) | **DELETE** /inboxes | Delete all inboxes
*InboxControllerAPI* | [**deleteInbox**](docs/InboxControllerAPI#deleteinbox) | **DELETE** /inboxes/{inboxId} | Delete inbox
*InboxControllerAPI* | [**getAllInboxes**](docs/InboxControllerAPI#getallinboxes) | **GET** /inboxes/paginated | List All Inboxes Paginated
*InboxControllerAPI* | [**getEmails**](docs/InboxControllerAPI#getemails) | **GET** /inboxes/{inboxId}/emails | Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead.
*InboxControllerAPI* | [**getInbox**](docs/InboxControllerAPI#getinbox) | **GET** /inboxes/{inboxId} | Get Inbox
*InboxControllerAPI* | [**getInboxEmailsPaginated**](docs/InboxControllerAPI#getinboxemailspaginated) | **GET** /inboxes/{inboxId}/emails/paginated | Get inbox emails paginated
*InboxControllerAPI* | [**getInboxSentEmails**](docs/InboxControllerAPI#getinboxsentemails) | **GET** /inboxes/{inboxId}/sent | Get Inbox Sent Emails
*InboxControllerAPI* | [**getInboxTags**](docs/InboxControllerAPI#getinboxtags) | **GET** /inboxes/tags | Get inbox tags
*InboxControllerAPI* | [**getInboxes**](docs/InboxControllerAPI#getinboxes) | **GET** /inboxes | List Inboxes / Email Addresses
*InboxControllerAPI* | [**getOrganizationInboxes**](docs/InboxControllerAPI#getorganizationinboxes) | **GET** /inboxes/organization | List Organization Inboxes Paginated
*InboxControllerAPI* | [**sendEmail**](docs/InboxControllerAPI#sendemail) | **POST** /inboxes/{inboxId} | Send Email
*InboxControllerAPI* | [**sendEmailAndConfirm**](docs/InboxControllerAPI#sendemailandconfirm) | **POST** /inboxes/{inboxId}/confirm | Send email and return sent confirmation
*InboxControllerAPI* | [**setInboxFavourited**](docs/InboxControllerAPI#setinboxfavourited) | **PUT** /inboxes/{inboxId}/favourite | Set inbox favourited state
*InboxControllerAPI* | [**updateInbox**](docs/InboxControllerAPI#updateinbox) | **PATCH** /inboxes/{inboxId} | Update Inbox
*MailServerControllerAPI* | [**describeMailServerDomain**](docs/MailServerControllerAPI#describemailserverdomain) | **POST** /mail-server/describe/domain | Get DNS Mail Server records for a domain
*MailServerControllerAPI* | [**getDnsLookup**](docs/MailServerControllerAPI#getdnslookup) | **POST** /mail-server/describe/dns-lookup | Lookup DNS records for a domain
*MailServerControllerAPI* | [**getIpAddress**](docs/MailServerControllerAPI#getipaddress) | **POST** /mail-server/describe/ip-address | Get IP address for a domain
*MailServerControllerAPI* | [**verifyEmailAddress**](docs/MailServerControllerAPI#verifyemailaddress) | **POST** /mail-server/verify/email-address | Verify the existence of an email address at a given mail server.
*SentEmailsControllerAPI* | [**getSentEmail**](docs/SentEmailsControllerAPI#getsentemail) | **GET** /sent/{id} | Get sent email receipt
*SentEmailsControllerAPI* | [**getSentEmails**](docs/SentEmailsControllerAPI#getsentemails) | **GET** /sent | Get all sent emails in paginated form
*SentEmailsControllerAPI* | [**getSentOrganizationEmails**](docs/SentEmailsControllerAPI#getsentorganizationemails) | **GET** /sent/organization | Get all sent organization emails in paginated form
*TemplateControllerAPI* | [**createTemplate**](docs/TemplateControllerAPI#createtemplate) | **POST** /templates | Create a Template
*TemplateControllerAPI* | [**deleteTemplate**](docs/TemplateControllerAPI#deletetemplate) | **DELETE** /templates/{TemplateId} | Delete Template
*TemplateControllerAPI* | [**getAllTemplates**](docs/TemplateControllerAPI#getalltemplates) | **GET** /templates/paginated | Get all Templates in paginated format
*TemplateControllerAPI* | [**getTemplate**](docs/TemplateControllerAPI#gettemplate) | **GET** /templates/{TemplateId} | Get Template
*TemplateControllerAPI* | [**getTemplates**](docs/TemplateControllerAPI#gettemplates) | **GET** /templates | Get all Templates
*WaitForControllerAPI* | [**waitFor**](docs/WaitForControllerAPI#waitfor) | **POST** /waitFor | Wait for conditions to be met
*WaitForControllerAPI* | [**waitForEmailCount**](docs/WaitForControllerAPI#waitforemailcount) | **GET** /waitForEmailCount | Wait for and return count number of emails 
*WaitForControllerAPI* | [**waitForLatestEmail**](docs/WaitForControllerAPI#waitforlatestemail) | **GET** /waitForLatestEmail | Fetch inbox&#39;s latest email or if empty wait for an email to arrive
*WaitForControllerAPI* | [**waitForMatchingEmail**](docs/WaitForControllerAPI#waitformatchingemail) | **POST** /waitForMatchingEmails | Wait or return list of emails that match simple matching patterns
*WaitForControllerAPI* | [**waitForMatchingFirstEmail**](docs/WaitForControllerAPI#waitformatchingfirstemail) | **POST** /waitForMatchingFirstEmail | Wait for or return the first email that matches proved MatchOptions array
*WaitForControllerAPI* | [**waitForNthEmail**](docs/WaitForControllerAPI#waitfornthemail) | **GET** /waitForNthEmail | Wait for or fetch the email with a given index in the inbox specified
*WebhookControllerAPI* | [**createWebhook**](docs/WebhookControllerAPI#createwebhook) | **POST** /inboxes/{inboxId}/webhooks | Attach a WebHook URL to an inbox
*WebhookControllerAPI* | [**deleteWebhook**](docs/WebhookControllerAPI#deletewebhook) | **DELETE** /inboxes/{inboxId}/webhooks/{webhookId} | Delete and disable a Webhook for an Inbox
*WebhookControllerAPI* | [**getAllWebhooks**](docs/WebhookControllerAPI#getallwebhooks) | **GET** /webhooks/paginated | List Webhooks Paginated
*WebhookControllerAPI* | [**getWebhook**](docs/WebhookControllerAPI#getwebhook) | **GET** /webhooks/{webhookId} | Get a webhook for an Inbox
*WebhookControllerAPI* | [**getWebhooks**](docs/WebhookControllerAPI#getwebhooks) | **GET** /inboxes/{inboxId}/webhooks | Get all Webhooks for an Inbox
*WebhookControllerAPI* | [**sendTestData**](docs/WebhookControllerAPI#sendtestdata) | **POST** /webhooks/{webhookId}/test | Send webhook test data


## Documentation For Models

 - [Alias](docs/Alias)
 - [AliasDto](docs/AliasDto)
 - [AliasProjection](docs/AliasProjection)
 - [AttachmentMetaData](docs/AttachmentMetaData)
 - [BasicAuthOptions](docs/BasicAuthOptions)
 - [BulkSendEmailOptions](docs/BulkSendEmailOptions)
 - [ContactDto](docs/ContactDto)
 - [ContactProjection](docs/ContactProjection)
 - [ContentMatchOptions](docs/ContentMatchOptions)
 - [CreateAliasOptions](docs/CreateAliasOptions)
 - [CreateContactOptions](docs/CreateContactOptions)
 - [CreateDomainOptions](docs/CreateDomainOptions)
 - [CreateGroupOptions](docs/CreateGroupOptions)
 - [CreateInboxDto](docs/CreateInboxDto)
 - [CreateTemplateOptions](docs/CreateTemplateOptions)
 - [CreateWebhookOptions](docs/CreateWebhookOptions)
 - [DNSLookupOptions](docs/DNSLookupOptions)
 - [DNSLookupResult](docs/DNSLookupResult)
 - [DNSLookupResults](docs/DNSLookupResults)
 - [DescribeDomainOptions](docs/DescribeDomainOptions)
 - [DescribeMailServerDomainResult](docs/DescribeMailServerDomainResult)
 - [DomainDto](docs/DomainDto)
 - [DomainNameRecord](docs/DomainNameRecord)
 - [DomainPreview](docs/DomainPreview)
 - [DownloadAttachmentDto](docs/DownloadAttachmentDto)
 - [Email](docs/Email)
 - [EmailAnalysis](docs/EmailAnalysis)
 - [EmailContentMatchResult](docs/EmailContentMatchResult)
 - [EmailPreview](docs/EmailPreview)
 - [EmailProjection](docs/EmailProjection)
 - [EmailTextLinesResult](docs/EmailTextLinesResult)
 - [EmailVerificationResult](docs/EmailVerificationResult)
 - [ExpirationDefaults](docs/ExpirationDefaults)
 - [ExpiredInboxDto](docs/ExpiredInboxDto)
 - [ExpiredInboxRecordProjection](docs/ExpiredInboxRecordProjection)
 - [ForwardEmailOptions](docs/ForwardEmailOptions)
 - [GroupContactsDto](docs/GroupContactsDto)
 - [GroupDto](docs/GroupDto)
 - [GroupProjection](docs/GroupProjection)
 - [HTMLValidationResult](docs/HTMLValidationResult)
 - [IPAddressResult](docs/IPAddressResult)
 - [Inbox](docs/Inbox)
 - [InboxProjection](docs/InboxProjection)
 - [MatchOption](docs/MatchOption)
 - [MatchOptions](docs/MatchOptions)
 - [NameServerRecord](docs/NameServerRecord)
 - [OrganizationInboxProjection](docs/OrganizationInboxProjection)
 - [PageAlias](docs/PageAlias)
 - [PageContactProjection](docs/PageContactProjection)
 - [PageEmailPreview](docs/PageEmailPreview)
 - [PageEmailProjection](docs/PageEmailProjection)
 - [PageExpiredInboxRecordProjection](docs/PageExpiredInboxRecordProjection)
 - [PageGroupProjection](docs/PageGroupProjection)
 - [PageInboxProjection](docs/PageInboxProjection)
 - [PageOrganizationInboxProjection](docs/PageOrganizationInboxProjection)
 - [PageSentEmailProjection](docs/PageSentEmailProjection)
 - [PageTemplateProjection](docs/PageTemplateProjection)
 - [PageThreadProjection](docs/PageThreadProjection)
 - [PageWebhookProjection](docs/PageWebhookProjection)
 - [Pageable](docs/Pageable)
 - [RawEmailJson](docs/RawEmailJson)
 - [ReplyToAliasEmailOptions](docs/ReplyToAliasEmailOptions)
 - [ReplyToEmailOptions](docs/ReplyToEmailOptions)
 - [SendEmailOptions](docs/SendEmailOptions)
 - [SentEmailDto](docs/SentEmailDto)
 - [SentEmailProjection](docs/SentEmailProjection)
 - [SetInboxFavouritedOptions](docs/SetInboxFavouritedOptions)
 - [SimpleSendEmailOptions](docs/SimpleSendEmailOptions)
 - [Sort](docs/Sort)
 - [TemplateDto](docs/TemplateDto)
 - [TemplateProjection](docs/TemplateProjection)
 - [TemplateVariable](docs/TemplateVariable)
 - [ThreadProjection](docs/ThreadProjection)
 - [UnreadCount](docs/UnreadCount)
 - [UpdateAliasOptions](docs/UpdateAliasOptions)
 - [UpdateDomainOptions](docs/UpdateDomainOptions)
 - [UpdateGroupContacts](docs/UpdateGroupContacts)
 - [UpdateInboxOptions](docs/UpdateInboxOptions)
 - [UploadAttachmentOptions](docs/UploadAttachmentOptions)
 - [ValidationDto](docs/ValidationDto)
 - [ValidationMessage](docs/ValidationMessage)
 - [VerifyEmailAddressOptions](docs/VerifyEmailAddressOptions)
 - [WaitForConditions](docs/WaitForConditions)
 - [WebhookDto](docs/WebhookDto)
 - [WebhookProjection](docs/WebhookProjection)
 - [WebhookTestRequest](docs/WebhookTestRequest)
 - [WebhookTestResponse](docs/WebhookTestResponse)
 - [WebhookTestResult](docs/WebhookTestResult)


## Documentation For Authorization


## API_KEY

- **Type**: API key
- **API key parameter name**: x-api-key
- **Location**: HTTP header


## Author



