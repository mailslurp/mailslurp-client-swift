# InboxControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelScheduledJob**](InboxControllerAPI#cancelscheduledjob) | **DELETE** /inboxes/scheduled-jobs/{jobId} | Cancel a scheduled email job
[**createInbox**](InboxControllerAPI#createinbox) | **POST** /inboxes | Create an inbox email address. An inbox has a real email address and can send and receive emails. Inboxes can be either &#x60;SMTP&#x60; or &#x60;HTTP&#x60; inboxes.
[**createInboxRuleset**](InboxControllerAPI#createinboxruleset) | **POST** /inboxes/{inboxId}/rulesets | Create an inbox ruleset
[**createInboxWithDefaults**](InboxControllerAPI#createinboxwithdefaults) | **POST** /inboxes/withDefaults | Create an inbox with default options. Uses MailSlurp domain pool address and is private.
[**createInboxWithOptions**](InboxControllerAPI#createinboxwithoptions) | **POST** /inboxes/withOptions | Create an inbox with options. Extended options for inbox creation.
[**deleteAllInboxEmails**](InboxControllerAPI#deleteallinboxemails) | **DELETE** /inboxes/{inboxId}/deleteAllInboxEmails | Delete all emails in a given inboxes.
[**deleteAllInboxes**](InboxControllerAPI#deleteallinboxes) | **DELETE** /inboxes | Delete all inboxes
[**deleteAllInboxesByDescription**](InboxControllerAPI#deleteallinboxesbydescription) | **DELETE** /inboxes/by-description | Delete inboxes by description
[**deleteAllInboxesByName**](InboxControllerAPI#deleteallinboxesbyname) | **DELETE** /inboxes/by-name | Delete inboxes by name
[**deleteAllInboxesByTag**](InboxControllerAPI#deleteallinboxesbytag) | **DELETE** /inboxes/by-tag | Delete inboxes by tag
[**deleteInbox**](InboxControllerAPI#deleteinbox) | **DELETE** /inboxes/{inboxId} | Delete inbox
[**doesInboxExist**](InboxControllerAPI#doesinboxexist) | **GET** /inboxes/exists | Does inbox exist
[**flushExpired**](InboxControllerAPI#flushexpired) | **DELETE** /inboxes/expired | Remove expired inboxes
[**getAllInboxes**](InboxControllerAPI#getallinboxes) | **GET** /inboxes/paginated | List All Inboxes Paginated
[**getAllInboxesOffsetPaginated**](InboxControllerAPI#getallinboxesoffsetpaginated) | **GET** /inboxes/offset-paginated | List All Inboxes Offset Paginated
[**getAllScheduledJobs**](InboxControllerAPI#getallscheduledjobs) | **GET** /inboxes/scheduled-jobs | Get all scheduled email sending jobs for account
[**getDeliveryStatusesByInboxId**](InboxControllerAPI#getdeliverystatusesbyinboxid) | **GET** /inboxes/{inboxId}/delivery-status | 
[**getEmails**](InboxControllerAPI#getemails) | **GET** /inboxes/{inboxId}/emails | Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead.
[**getImapAccess**](InboxControllerAPI#getimapaccess) | **GET** /inboxes/imap-access | 
[**getImapSmtpAccess**](InboxControllerAPI#getimapsmtpaccess) | **GET** /inboxes/imap-smtp-access | 
[**getImapSmtpAccessEnv**](InboxControllerAPI#getimapsmtpaccessenv) | **GET** /inboxes/imap-smtp-access/env | 
[**getImapSmtpAccessServers**](InboxControllerAPI#getimapsmtpaccessservers) | **GET** /inboxes/imap-smtp-access/servers | 
[**getInbox**](InboxControllerAPI#getinbox) | **GET** /inboxes/{inboxId} | Get Inbox. Returns properties of an inbox.
[**getInboxByEmailAddress**](InboxControllerAPI#getinboxbyemailaddress) | **GET** /inboxes/byEmailAddress | Search for an inbox with the provided email address
[**getInboxByName**](InboxControllerAPI#getinboxbyname) | **GET** /inboxes/byName | Search for an inbox with the given name
[**getInboxCount**](InboxControllerAPI#getinboxcount) | **GET** /inboxes/count | Get total inbox count
[**getInboxEmailCount**](InboxControllerAPI#getinboxemailcount) | **GET** /inboxes/{inboxId}/emails/count | Get email count in inbox
[**getInboxEmailsPaginated**](InboxControllerAPI#getinboxemailspaginated) | **GET** /inboxes/{inboxId}/emails/paginated | Get inbox emails paginated
[**getInboxIds**](InboxControllerAPI#getinboxids) | **GET** /inboxes/ids | Get all inbox IDs
[**getInboxSentEmails**](InboxControllerAPI#getinboxsentemails) | **GET** /inboxes/{inboxId}/sent | Get Inbox Sent Emails
[**getInboxTags**](InboxControllerAPI#getinboxtags) | **GET** /inboxes/tags | Get inbox tags
[**getInboxes**](InboxControllerAPI#getinboxes) | **GET** /inboxes | List Inboxes and email addresses
[**getLatestEmailInInbox**](InboxControllerAPI#getlatestemailininbox) | **GET** /inboxes/getLatestEmail | Get latest email in an inbox. Use &#x60;WaitForController&#x60; to get emails that may not have arrived yet.
[**getOrganizationInboxes**](InboxControllerAPI#getorganizationinboxes) | **GET** /inboxes/organization | List Organization Inboxes Paginated
[**getScheduledJob**](InboxControllerAPI#getscheduledjob) | **GET** /inboxes/scheduled-jobs/{jobId} | Get a scheduled email job
[**getScheduledJobsByInboxId**](InboxControllerAPI#getscheduledjobsbyinboxid) | **GET** /inboxes/{inboxId}/scheduled-jobs | Get all scheduled email sending jobs for the inbox
[**getSmtpAccess**](InboxControllerAPI#getsmtpaccess) | **GET** /inboxes/smtp-access | 
[**isEmailAddressAvailable**](InboxControllerAPI#isemailaddressavailable) | **POST** /inboxes/available | Is email address available
[**listInboxRulesets**](InboxControllerAPI#listinboxrulesets) | **GET** /inboxes/{inboxId}/rulesets | List inbox rulesets
[**listInboxTrackingPixels**](InboxControllerAPI#listinboxtrackingpixels) | **GET** /inboxes/{inboxId}/tracking-pixels | List inbox tracking pixels
[**searchInboxes**](InboxControllerAPI#searchinboxes) | **POST** /inboxes/search | Search all inboxes and return matching inboxes
[**sendEmail**](InboxControllerAPI#sendemail) | **POST** /inboxes/{inboxId} | Send Email
[**sendEmailAndConfirm**](InboxControllerAPI#sendemailandconfirm) | **POST** /inboxes/{inboxId}/confirm | Send email and return sent confirmation
[**sendEmailWithQueue**](InboxControllerAPI#sendemailwithqueue) | **POST** /inboxes/{inboxId}/with-queue | Send email with queue
[**sendSmtpEnvelope**](InboxControllerAPI#sendsmtpenvelope) | **POST** /inboxes/{inboxId}/smtp-envelope | Send email using an SMTP mail envelope and message body and return sent confirmation
[**sendTestEmail**](InboxControllerAPI#sendtestemail) | **POST** /inboxes/{inboxId}/send-test-email | Send a test email to inbox
[**sendWithSchedule**](InboxControllerAPI#sendwithschedule) | **POST** /inboxes/{inboxId}/with-schedule | Send email with with delay or schedule
[**setInboxFavourited**](InboxControllerAPI#setinboxfavourited) | **PUT** /inboxes/{inboxId}/favourite | Set inbox favourited state
[**updateImapAccess**](InboxControllerAPI#updateimapaccess) | **PATCH** /inboxes/imap-access | 
[**updateInbox**](InboxControllerAPI#updateinbox) | **PATCH** /inboxes/{inboxId} | Update Inbox. Change name and description. Email address is not editable.
[**updateSmtpAccess**](InboxControllerAPI#updatesmtpaccess) | **PATCH** /inboxes/smtp-access | 


# **cancelScheduledJob**
```swift
    open class func cancelScheduledJob( jobId: UUID) -> Promise<ScheduledJobDto>
```

Cancel a scheduled email job

Get a scheduled email job and cancel it. Will fail if status of job is already cancelled, failed, or complete.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let jobId = 987 // UUID | 

// Cancel a scheduled email job
InboxControllerAPI.cancelScheduledJob(jobId: jobId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobId** | **UUID** |  | 

### Return type

[**ScheduledJobDto**](ScheduledJobDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createInbox**
```swift
    open class func createInbox( emailAddress: String? = nil,  tags: [String]? = nil,  name: String? = nil,  _description: String? = nil,  useDomainPool: Bool? = nil,  favourite: Bool? = nil,  expiresAt: Date? = nil,  expiresIn: Int64? = nil,  allowTeamAccess: Bool? = nil,  inboxType: InboxType_createInbox? = nil,  virtualInbox: Bool? = nil,  useShortAddress: Bool? = nil,  domainId: UUID? = nil,  domainName: String? = nil,  _prefix: String? = nil) -> Promise<InboxDto>
```

Create an inbox email address. An inbox has a real email address and can send and receive emails. Inboxes can be either `SMTP` or `HTTP` inboxes.

Create a new inbox and with a randomized email address to send and receive from. Pass emailAddress parameter if you wish to use a specific email address. Creating an inbox is required before sending or receiving emails. If writing tests it is recommended that you create a new inbox during each test method so that it is unique and empty. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailAddress = "emailAddress_example" // String | A custom email address to use with the inbox. Defaults to null. When null MailSlurp will assign a random email address to the inbox such as `123@mailslurp.com`. If you use the `useDomainPool` option when the email address is null it will generate an email address with a more varied domain ending such as `123@mailslurp.info` or `123@mailslurp.biz`. When a custom email address is provided the address is split into a domain and the domain is queried against your user. If you have created the domain in the MailSlurp dashboard and verified it you can use any email address that ends with the domain. Note domain types must match the inbox type - so `SMTP` inboxes will only work with `SMTP` type domains. Avoid `SMTP` inboxes if you need to send emails as they can only receive. Send an email to this address and the inbox will receive and store it for you. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID. (optional)
let tags = ["inner_example"] // [String] | Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI. (optional)
let name = "name_example" // String | Optional name of the inbox. Displayed in the dashboard for easier search and used as the sender name when sending emails. (optional)
let _description = "_description_example" // String | Optional description of the inbox for labelling purposes. Is shown in the dashboard and can be used with (optional)
let useDomainPool = true // Bool | Use the MailSlurp domain name pool with this inbox when creating the email address. Defaults to null. If enabled the inbox will be an email address with a domain randomly chosen from a list of the MailSlurp domains. This is useful when the default `@mailslurp.com` email addresses used with inboxes are blocked or considered spam by a provider or receiving service. When domain pool is enabled an email address will be generated ending in `@mailslurp.{world,info,xyz,...}` . This means a TLD is randomly selecting from a list of `.biz`, `.info`, `.xyz` etc to add variance to the generated email addresses. When null or false MailSlurp uses the default behavior of `@mailslurp.com` or custom email address provided by the emailAddress field. Note this feature is only available for `HTTP` inbox types. (optional)
let favourite = true // Bool | Is the inbox a favorite. Marking an inbox as a favorite is typically done in the dashboard for quick access or filtering (optional)
let expiresAt = Date() // Date | Optional inbox expiration date. If null then this inbox is permanent and the emails in it won't be deleted. If an expiration date is provided or is required by your plan the inbox will be closed when the expiration time is reached. Expired inboxes still contain their emails but can no longer send or receive emails. An ExpiredInboxRecord is created when an inbox and the email address and inbox ID are recorded. The expiresAt property is a timestamp string in ISO DateTime Format yyyy-MM-dd'T'HH:mm:ss.SSSXXX. (optional)
let expiresIn = 987 // Int64 | Number of milliseconds that inbox should exist for (optional)
let allowTeamAccess = true // Bool | DEPRECATED (team access is always true). Grant team access to this inbox and the emails that belong to it for team members of your organization. (optional)
let inboxType = "inboxType_example" // String | HTTP (default) or SMTP inbox type. HTTP inboxes are default and best solution for most cases. SMTP inboxes are more reliable for public inbound email consumption (but do not support sending emails). When using custom domains the domain type must match the inbox type. HTTP inboxes are processed by AWS SES while SMTP inboxes use a custom mail server running at `mxslurp.click`. (optional)
let virtualInbox = true // Bool | Virtual inbox prevents any outbound emails from being sent. It creates sent email records but will never send real emails to recipients. Great for testing and faking email sending. (optional)
let useShortAddress = true // Bool | Use a shorter email address under 31 characters (optional)
let domainId = 987 // UUID | ID of custom domain to use for email address. (optional)
let domainName = "domainName_example" // String | FQDN domain name for the domain you have verified. Will be appended with a randomly assigned recipient name. Use the `emailAddress` option instead to specify the full custom inbox. (optional)
let _prefix = "_prefix_example" // String | Prefix to add before the email address for easier labelling or identification. (optional)

// Create an inbox email address. An inbox has a real email address and can send and receive emails. Inboxes can be either `SMTP` or `HTTP` inboxes.
InboxControllerAPI.createInbox(emailAddress: emailAddress, tags: tags, name: name, _description: _description, useDomainPool: useDomainPool, favourite: favourite, expiresAt: expiresAt, expiresIn: expiresIn, allowTeamAccess: allowTeamAccess, inboxType: inboxType, virtualInbox: virtualInbox, useShortAddress: useShortAddress, domainId: domainId, domainName: domainName, _prefix: _prefix).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailAddress** | **String** | A custom email address to use with the inbox. Defaults to null. When null MailSlurp will assign a random email address to the inbox such as &#x60;123@mailslurp.com&#x60;. If you use the &#x60;useDomainPool&#x60; option when the email address is null it will generate an email address with a more varied domain ending such as &#x60;123@mailslurp.info&#x60; or &#x60;123@mailslurp.biz&#x60;. When a custom email address is provided the address is split into a domain and the domain is queried against your user. If you have created the domain in the MailSlurp dashboard and verified it you can use any email address that ends with the domain. Note domain types must match the inbox type - so &#x60;SMTP&#x60; inboxes will only work with &#x60;SMTP&#x60; type domains. Avoid &#x60;SMTP&#x60; inboxes if you need to send emails as they can only receive. Send an email to this address and the inbox will receive and store it for you. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID. | [optional] 
 **tags** | [**[String]**](String) | Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI. | [optional] 
 **name** | **String** | Optional name of the inbox. Displayed in the dashboard for easier search and used as the sender name when sending emails. | [optional] 
 **_description** | **String** | Optional description of the inbox for labelling purposes. Is shown in the dashboard and can be used with | [optional] 
 **useDomainPool** | **Bool** | Use the MailSlurp domain name pool with this inbox when creating the email address. Defaults to null. If enabled the inbox will be an email address with a domain randomly chosen from a list of the MailSlurp domains. This is useful when the default &#x60;@mailslurp.com&#x60; email addresses used with inboxes are blocked or considered spam by a provider or receiving service. When domain pool is enabled an email address will be generated ending in &#x60;@mailslurp.{world,info,xyz,...}&#x60; . This means a TLD is randomly selecting from a list of &#x60;.biz&#x60;, &#x60;.info&#x60;, &#x60;.xyz&#x60; etc to add variance to the generated email addresses. When null or false MailSlurp uses the default behavior of &#x60;@mailslurp.com&#x60; or custom email address provided by the emailAddress field. Note this feature is only available for &#x60;HTTP&#x60; inbox types. | [optional] 
 **favourite** | **Bool** | Is the inbox a favorite. Marking an inbox as a favorite is typically done in the dashboard for quick access or filtering | [optional] 
 **expiresAt** | **Date** | Optional inbox expiration date. If null then this inbox is permanent and the emails in it won&#39;t be deleted. If an expiration date is provided or is required by your plan the inbox will be closed when the expiration time is reached. Expired inboxes still contain their emails but can no longer send or receive emails. An ExpiredInboxRecord is created when an inbox and the email address and inbox ID are recorded. The expiresAt property is a timestamp string in ISO DateTime Format yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSSXXX. | [optional] 
 **expiresIn** | **Int64** | Number of milliseconds that inbox should exist for | [optional] 
 **allowTeamAccess** | **Bool** | DEPRECATED (team access is always true). Grant team access to this inbox and the emails that belong to it for team members of your organization. | [optional] 
 **inboxType** | **String** | HTTP (default) or SMTP inbox type. HTTP inboxes are default and best solution for most cases. SMTP inboxes are more reliable for public inbound email consumption (but do not support sending emails). When using custom domains the domain type must match the inbox type. HTTP inboxes are processed by AWS SES while SMTP inboxes use a custom mail server running at &#x60;mxslurp.click&#x60;. | [optional] 
 **virtualInbox** | **Bool** | Virtual inbox prevents any outbound emails from being sent. It creates sent email records but will never send real emails to recipients. Great for testing and faking email sending. | [optional] 
 **useShortAddress** | **Bool** | Use a shorter email address under 31 characters | [optional] 
 **domainId** | **UUID** | ID of custom domain to use for email address. | [optional] 
 **domainName** | **String** | FQDN domain name for the domain you have verified. Will be appended with a randomly assigned recipient name. Use the &#x60;emailAddress&#x60; option instead to specify the full custom inbox. | [optional] 
 **_prefix** | **String** | Prefix to add before the email address for easier labelling or identification. | [optional] 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createInboxRuleset**
```swift
    open class func createInboxRuleset( inboxId: UUID,  createInboxRulesetOptions: CreateInboxRulesetOptions) -> Promise<InboxRulesetDto>
```

Create an inbox ruleset

Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | inboxId
let createInboxRulesetOptions = CreateInboxRulesetOptions(scope: "scope_example", action: "action_example", target: "target_example") // CreateInboxRulesetOptions | 

// Create an inbox ruleset
InboxControllerAPI.createInboxRuleset(inboxId: inboxId, createInboxRulesetOptions: createInboxRulesetOptions).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **UUID** | inboxId | 
 **createInboxRulesetOptions** | [**CreateInboxRulesetOptions**](CreateInboxRulesetOptions) |  | 

### Return type

[**InboxRulesetDto**](InboxRulesetDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createInboxWithDefaults**
```swift
    open class func createInboxWithDefaults() -> Promise<InboxDto>
```

Create an inbox with default options. Uses MailSlurp domain pool address and is private.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Create an inbox with default options. Uses MailSlurp domain pool address and is private.
InboxControllerAPI.createInboxWithDefaults().then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createInboxWithOptions**
```swift
    open class func createInboxWithOptions( createInboxDto: CreateInboxDto) -> Promise<InboxDto>
```

Create an inbox with options. Extended options for inbox creation.

Additional endpoint that allows inbox creation with request body options. Can be more flexible that other methods for some clients.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let createInboxDto = CreateInboxDto(emailAddress: "emailAddress_example", domainName: "domainName_example", domainId: 123, name: "name_example", _description: "_description_example", useDomainPool: false, tags: ["tags_example"], expiresAt: Date(), favourite: false, expiresIn: 123, allowTeamAccess: false, inboxType: "inboxType_example", virtualInbox: false, useShortAddress: false, _prefix: "_prefix_example") // CreateInboxDto | 

// Create an inbox with options. Extended options for inbox creation.
InboxControllerAPI.createInboxWithOptions(createInboxDto: createInboxDto).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createInboxDto** | [**CreateInboxDto**](CreateInboxDto) |  | 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteAllInboxEmails**
```swift
    open class func deleteAllInboxEmails( inboxId: UUID) -> Promise<Void>
```

Delete all emails in a given inboxes.

Deletes all emails in an inbox. Be careful as emails cannot be recovered

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | 

// Delete all emails in a given inboxes.
InboxControllerAPI.deleteAllInboxEmails(inboxId: inboxId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **UUID** |  | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteAllInboxes**
```swift
    open class func deleteAllInboxes() -> Promise<Void>
```

Delete all inboxes

Permanently delete all inboxes and associated email addresses. This will also delete all emails within the inboxes. Be careful as inboxes cannot be recovered once deleted. Note: deleting inboxes will not impact your usage limits. Monthly inbox creation limits are based on how many inboxes were created in the last 30 days, not how many inboxes you currently have.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Delete all inboxes
InboxControllerAPI.deleteAllInboxes().then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteAllInboxesByDescription**
```swift
    open class func deleteAllInboxesByDescription( _description: String) -> Promise<Void>
```

Delete inboxes by description

Permanently delete all inboxes by description

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _description = "_description_example" // String | 

// Delete inboxes by description
InboxControllerAPI.deleteAllInboxesByDescription(_description: _description).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_description** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteAllInboxesByName**
```swift
    open class func deleteAllInboxesByName( name: String) -> Promise<Void>
```

Delete inboxes by name

Permanently delete all inboxes by name

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let name = "name_example" // String | 

// Delete inboxes by name
InboxControllerAPI.deleteAllInboxesByName(name: name).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteAllInboxesByTag**
```swift
    open class func deleteAllInboxesByTag( tag: String) -> Promise<Void>
```

Delete inboxes by tag

Permanently delete all inboxes by tag

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let tag = "tag_example" // String | 

// Delete inboxes by tag
InboxControllerAPI.deleteAllInboxesByTag(tag: tag).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteInbox**
```swift
    open class func deleteInbox( inboxId: UUID) -> Promise<Void>
```

Delete inbox

Permanently delete an inbox and associated email address as well as all emails within the given inbox. This action cannot be undone. Note: deleting an inbox will not affect your account usage. Monthly inbox usage is based on how many inboxes you create within 30 days, not how many exist at time of request.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | 

// Delete inbox
InboxControllerAPI.deleteInbox(inboxId: inboxId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **UUID** |  | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **doesInboxExist**
```swift
    open class func doesInboxExist( emailAddress: String,  allowCatchAll: Bool? = nil) -> Promise<InboxExistsDto>
```

Does inbox exist

Check if inboxes exist by email address. Useful if you are sending emails to mailslurp addresses

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailAddress = "emailAddress_example" // String | Email address
let allowCatchAll = true // Bool |  (optional)

// Does inbox exist
InboxControllerAPI.doesInboxExist(emailAddress: emailAddress, allowCatchAll: allowCatchAll).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailAddress** | **String** | Email address | 
 **allowCatchAll** | **Bool** |  | [optional] 

### Return type

[**InboxExistsDto**](InboxExistsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **flushExpired**
```swift
    open class func flushExpired( before: Date? = nil) -> Promise<FlushExpiredInboxesResult>
```

Remove expired inboxes

Remove any expired inboxes for your account (instead of waiting for scheduled removal on server)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let before = Date() // Date | Optional expired at before flag to flush expired inboxes that have expired before the given time (optional)

// Remove expired inboxes
InboxControllerAPI.flushExpired(before: before).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **Date** | Optional expired at before flag to flush expired inboxes that have expired before the given time | [optional] 

### Return type

[**FlushExpiredInboxesResult**](FlushExpiredInboxesResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllInboxes**
```swift
    open class func getAllInboxes( page: Int? = nil,  size: Int? = nil,  sort: Sort_getAllInboxes? = nil,  favourite: Bool? = nil,  search: String? = nil,  tag: String? = nil,  teamAccess: Bool? = nil,  since: Date? = nil,  before: Date? = nil,  inboxType: InboxType_getAllInboxes? = nil,  inboxFunction: InboxFunction_getAllInboxes? = nil,  domainId: UUID? = nil) -> Promise<PageInboxProjection>
```

List All Inboxes Paginated

List inboxes in paginated form. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). You Can also filter by whether an inbox is favorited or use email address pattern. This method is the recommended way to query inboxes. The alternative `getInboxes` method returns a full list of inboxes but is limited to 100 results.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int | Optional page index in list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let favourite = true // Bool | Optionally filter results for favourites only (optional) (default to false)
let search = "search_example" // String | Optionally filter by search words partial matching ID, tags, name, and email address (optional)
let tag = "tag_example" // String | Optionally filter by tags. Will return inboxes that include given tags (optional)
let teamAccess = true // Bool | DEPRECATED. Optionally filter by team access. (optional)
let since = Date() // Date | Optional filter by created after given date time (optional)
let before = Date() // Date | Optional filter by created before given date time (optional)
let inboxType = "inboxType_example" // String | Optional filter by inbox type (optional)
let inboxFunction = "inboxFunction_example" // String | Optional filter by inbox function (optional)
let domainId = 987 // UUID | Optional domain ID filter (optional)

// List All Inboxes Paginated
InboxControllerAPI.getAllInboxes(page: page, size: size, sort: sort, favourite: favourite, search: search, tag: tag, teamAccess: teamAccess, since: since, before: before, inboxType: inboxType, inboxFunction: inboxFunction, domainId: domainId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int** | Optional page index in list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **favourite** | **Bool** | Optionally filter results for favourites only | [optional] [default to false]
 **search** | **String** | Optionally filter by search words partial matching ID, tags, name, and email address | [optional] 
 **tag** | **String** | Optionally filter by tags. Will return inboxes that include given tags | [optional] 
 **teamAccess** | **Bool** | DEPRECATED. Optionally filter by team access. | [optional] 
 **since** | **Date** | Optional filter by created after given date time | [optional] 
 **before** | **Date** | Optional filter by created before given date time | [optional] 
 **inboxType** | **String** | Optional filter by inbox type | [optional] 
 **inboxFunction** | **String** | Optional filter by inbox function | [optional] 
 **domainId** | **UUID** | Optional domain ID filter | [optional] 

### Return type

[**PageInboxProjection**](PageInboxProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllInboxesOffsetPaginated**
```swift
    open class func getAllInboxesOffsetPaginated( page: Int? = nil,  size: Int? = nil,  sort: Sort_getAllInboxesOffsetPaginated? = nil,  favourite: Bool? = nil,  search: String? = nil,  tag: String? = nil,  teamAccess: Bool? = nil,  since: Date? = nil,  before: Date? = nil,  inboxType: InboxType_getAllInboxesOffsetPaginated? = nil,  inboxFunction: InboxFunction_getAllInboxesOffsetPaginated? = nil,  domainId: UUID? = nil) -> Promise<PageInboxProjection>
```

List All Inboxes Offset Paginated

List inboxes in paginated form. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). You Can also filter by whether an inbox is favorited or use email address pattern. This method is the recommended way to query inboxes. The alternative `getInboxes` method returns a full list of inboxes but is limited to 100 results.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int | Optional page index in list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let favourite = true // Bool | Optionally filter results for favourites only (optional) (default to false)
let search = "search_example" // String | Optionally filter by search words partial matching ID, tags, name, and email address (optional)
let tag = "tag_example" // String | Optionally filter by tags. Will return inboxes that include given tags (optional)
let teamAccess = true // Bool | DEPRECATED. Optionally filter by team access. (optional)
let since = Date() // Date | Optional filter by created after given date time (optional)
let before = Date() // Date | Optional filter by created before given date time (optional)
let inboxType = "inboxType_example" // String | Optional filter by inbox type (optional)
let inboxFunction = "inboxFunction_example" // String | Optional filter by inbox function (optional)
let domainId = 987 // UUID | Optional domain ID filter (optional)

// List All Inboxes Offset Paginated
InboxControllerAPI.getAllInboxesOffsetPaginated(page: page, size: size, sort: sort, favourite: favourite, search: search, tag: tag, teamAccess: teamAccess, since: since, before: before, inboxType: inboxType, inboxFunction: inboxFunction, domainId: domainId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int** | Optional page index in list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **favourite** | **Bool** | Optionally filter results for favourites only | [optional] [default to false]
 **search** | **String** | Optionally filter by search words partial matching ID, tags, name, and email address | [optional] 
 **tag** | **String** | Optionally filter by tags. Will return inboxes that include given tags | [optional] 
 **teamAccess** | **Bool** | DEPRECATED. Optionally filter by team access. | [optional] 
 **since** | **Date** | Optional filter by created after given date time | [optional] 
 **before** | **Date** | Optional filter by created before given date time | [optional] 
 **inboxType** | **String** | Optional filter by inbox type | [optional] 
 **inboxFunction** | **String** | Optional filter by inbox function | [optional] 
 **domainId** | **UUID** | Optional domain ID filter | [optional] 

### Return type

[**PageInboxProjection**](PageInboxProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllScheduledJobs**
```swift
    open class func getAllScheduledJobs( page: Int? = nil,  size: Int? = nil,  sort: Sort_getAllScheduledJobs? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageScheduledJobs>
```

Get all scheduled email sending jobs for account

Schedule sending of emails using scheduled jobs. These can be inbox or account level.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int | Optional page index in scheduled job list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in scheduled job list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)

// Get all scheduled email sending jobs for account
InboxControllerAPI.getAllScheduledJobs(page: page, size: size, sort: sort, since: since, before: before).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int** | Optional page index in scheduled job list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in scheduled job list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 

### Return type

[**PageScheduledJobs**](PageScheduledJobs)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDeliveryStatusesByInboxId**
```swift
    open class func getDeliveryStatusesByInboxId( inboxId: UUID,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getDeliveryStatusesByInboxId? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageDeliveryStatus>
```



Get all email delivery statuses for an inbox

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | 
let page = 987 // Int | Optional page index in delivery status list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in delivery status list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)

InboxControllerAPI.getDeliveryStatusesByInboxId(inboxId: inboxId, page: page, size: size, sort: sort, since: since, before: before).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **UUID** |  | 
 **page** | **Int** | Optional page index in delivery status list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in delivery status list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 

### Return type

[**PageDeliveryStatus**](PageDeliveryStatus)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmails**
```swift
    open class func getEmails( inboxId: UUID,  size: Int? = nil,  limit: Int? = nil,  sort: Sort_getEmails? = nil,  retryTimeout: Int64? = nil,  delayTimeout: Int64? = nil,  minCount: Int64? = nil,  unreadOnly: Bool? = nil,  before: Date? = nil,  since: Date? = nil) -> Promise<[EmailPreview]>
```

Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead.

List emails that an inbox has received. Only emails that are sent to the inbox's email address will appear in the inbox. It may take several seconds for any email you send to an inbox's email address to appear in the inbox. To make this endpoint wait for a minimum number of emails use the `minCount` parameter. The server will retry the inbox database until the `minCount` is satisfied or the `retryTimeout` is reached

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | Id of inbox that emails belongs to
let size = 987 // Int | Alias for limit. Assessed first before assessing any passed limit. (optional)
let limit = 987 // Int | Limit the result set, ordered by received date time sort direction. Maximum 100. For more listing options see the email controller (optional)
let sort = "sort_example" // String | Sort the results by received date and direction ASC or DESC (optional)
let retryTimeout = 987 // Int64 | Maximum milliseconds to spend retrying inbox database until minCount emails are returned (optional)
let delayTimeout = 987 // Int64 |  (optional)
let minCount = 987 // Int64 | Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached. (optional)
let unreadOnly = true // Bool |  (optional)
let before = Date() // Date | Exclude emails received after this ISO 8601 date time (optional)
let since = Date() // Date | Exclude emails received before this ISO 8601 date time (optional)

// Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead.
InboxControllerAPI.getEmails(inboxId: inboxId, size: size, limit: limit, sort: sort, retryTimeout: retryTimeout, delayTimeout: delayTimeout, minCount: minCount, unreadOnly: unreadOnly, before: before, since: since).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **UUID** | Id of inbox that emails belongs to | 
 **size** | **Int** | Alias for limit. Assessed first before assessing any passed limit. | [optional] 
 **limit** | **Int** | Limit the result set, ordered by received date time sort direction. Maximum 100. For more listing options see the email controller | [optional] 
 **sort** | **String** | Sort the results by received date and direction ASC or DESC | [optional] 
 **retryTimeout** | **Int64** | Maximum milliseconds to spend retrying inbox database until minCount emails are returned | [optional] 
 **delayTimeout** | **Int64** |  | [optional] 
 **minCount** | **Int64** | Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached. | [optional] 
 **unreadOnly** | **Bool** |  | [optional] 
 **before** | **Date** | Exclude emails received after this ISO 8601 date time | [optional] 
 **since** | **Date** | Exclude emails received before this ISO 8601 date time | [optional] 

### Return type

[**[EmailPreview]**](EmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getImapAccess**
```swift
    open class func getImapAccess( inboxId: UUID? = nil) -> Promise<ImapAccessDetails>
```



Get IMAP access usernames and passwords

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | Inbox ID (optional)

InboxControllerAPI.getImapAccess(inboxId: inboxId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **UUID** | Inbox ID | [optional] 

### Return type

[**ImapAccessDetails**](ImapAccessDetails)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getImapSmtpAccess**
```swift
    open class func getImapSmtpAccess( inboxId: UUID? = nil) -> Promise<ImapSmtpAccessDetails>
```



Get IMAP and SMTP access usernames and passwords

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | Inbox ID (optional)

InboxControllerAPI.getImapSmtpAccess(inboxId: inboxId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **UUID** | Inbox ID | [optional] 

### Return type

[**ImapSmtpAccessDetails**](ImapSmtpAccessDetails)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getImapSmtpAccessEnv**
```swift
    open class func getImapSmtpAccessEnv( inboxId: UUID? = nil) -> Promise<String>
```



Get IMAP and SMTP access details in .env format

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | Inbox ID (optional)

InboxControllerAPI.getImapSmtpAccessEnv(inboxId: inboxId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **UUID** | Inbox ID | [optional] 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getImapSmtpAccessServers**
```swift
    open class func getImapSmtpAccessServers() -> Promise<ImapSmtpAccessServers>
```



Get IMAP and SMTP server hosts

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


InboxControllerAPI.getImapSmtpAccessServers().then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ImapSmtpAccessServers**](ImapSmtpAccessServers)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInbox**
```swift
    open class func getInbox( inboxId: UUID) -> Promise<InboxDto>
```

Get Inbox. Returns properties of an inbox.

Returns an inbox's properties, including its email address and ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | 

// Get Inbox. Returns properties of an inbox.
InboxControllerAPI.getInbox(inboxId: inboxId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **UUID** |  | 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxByEmailAddress**
```swift
    open class func getInboxByEmailAddress( emailAddress: String) -> Promise<InboxByEmailAddressResult>
```

Search for an inbox with the provided email address

Get a inbox result by email address

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailAddress = "emailAddress_example" // String | 

// Search for an inbox with the provided email address
InboxControllerAPI.getInboxByEmailAddress(emailAddress: emailAddress).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailAddress** | **String** |  | 

### Return type

[**InboxByEmailAddressResult**](InboxByEmailAddressResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxByName**
```swift
    open class func getInboxByName( name: String) -> Promise<InboxByNameResult>
```

Search for an inbox with the given name

Get a inbox result by name

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let name = "name_example" // String | 

// Search for an inbox with the given name
InboxControllerAPI.getInboxByName(name: name).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String** |  | 

### Return type

[**InboxByNameResult**](InboxByNameResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxCount**
```swift
    open class func getInboxCount() -> Promise<CountDto>
```

Get total inbox count

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Get total inbox count
InboxControllerAPI.getInboxCount().then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CountDto**](CountDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxEmailCount**
```swift
    open class func getInboxEmailCount( inboxId: UUID) -> Promise<CountDto>
```

Get email count in inbox

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | Id of inbox that emails belongs to

// Get email count in inbox
InboxControllerAPI.getInboxEmailCount(inboxId: inboxId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **UUID** | Id of inbox that emails belongs to | 

### Return type

[**CountDto**](CountDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxEmailsPaginated**
```swift
    open class func getInboxEmailsPaginated( inboxId: UUID,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getInboxEmailsPaginated? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageEmailPreview>
```

Get inbox emails paginated

Get a paginated list of emails in an inbox. Does not hold connections open.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | Id of inbox that emails belongs to
let page = 987 // Int | Optional page index in inbox emails list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in inbox emails list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let since = Date() // Date | Optional filter by received after given date time (optional)
let before = Date() // Date | Optional filter by received before given date time (optional)

// Get inbox emails paginated
InboxControllerAPI.getInboxEmailsPaginated(inboxId: inboxId, page: page, size: size, sort: sort, since: since, before: before).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **UUID** | Id of inbox that emails belongs to | 
 **page** | **Int** | Optional page index in inbox emails list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in inbox emails list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **since** | **Date** | Optional filter by received after given date time | [optional] 
 **before** | **Date** | Optional filter by received before given date time | [optional] 

### Return type

[**PageEmailPreview**](PageEmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxIds**
```swift
    open class func getInboxIds() -> Promise<InboxIdsResult>
```

Get all inbox IDs

Get list of inbox IDs

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Get all inbox IDs
InboxControllerAPI.getInboxIds().then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InboxIdsResult**](InboxIdsResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxSentEmails**
```swift
    open class func getInboxSentEmails( inboxId: UUID,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getInboxSentEmails? = nil,  searchFilter: String? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageSentEmailProjection>
```

Get Inbox Sent Emails

Returns an inbox's sent email receipts. Call individual sent email endpoints for more details. Note for privacy reasons the full body of sent emails is never stored. An MD5 hash hex is available for comparison instead.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | 
let page = 987 // Int | Optional page index in inbox sent email list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in inbox sent email list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let searchFilter = "searchFilter_example" // String | Optional sent email search (optional)
let since = Date() // Date | Optional filter by sent after given date time (optional)
let before = Date() // Date | Optional filter by sent before given date time (optional)

// Get Inbox Sent Emails
InboxControllerAPI.getInboxSentEmails(inboxId: inboxId, page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **UUID** |  | 
 **page** | **Int** | Optional page index in inbox sent email list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in inbox sent email list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **searchFilter** | **String** | Optional sent email search | [optional] 
 **since** | **Date** | Optional filter by sent after given date time | [optional] 
 **before** | **Date** | Optional filter by sent before given date time | [optional] 

### Return type

[**PageSentEmailProjection**](PageSentEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxTags**
```swift
    open class func getInboxTags() -> Promise<[String]>
```

Get inbox tags

Get all inbox tags

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Get inbox tags
InboxControllerAPI.getInboxTags().then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**[String]**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxes**
```swift
    open class func getInboxes( size: Int? = nil,  sort: Sort_getInboxes? = nil,  since: Date? = nil,  excludeCatchAllInboxes: Bool? = nil,  before: Date? = nil) -> Promise<[InboxDto]>
```

List Inboxes and email addresses

List the inboxes you have created. Note use of the more advanced `getAllInboxes` is recommended and allows paginated access using a limit and sort parameter.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let size = 987 // Int | Optional result size limit. Note an automatic limit of 100 results is applied. See the paginated `getAllEmails` for larger queries. (optional) (default to 100)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let since = Date() // Date | Optional filter by created after given date time (optional)
let excludeCatchAllInboxes = true // Bool | Optional exclude catch all inboxes (optional)
let before = Date() // Date | Optional filter by created before given date time (optional)

// List Inboxes and email addresses
InboxControllerAPI.getInboxes(size: size, sort: sort, since: since, excludeCatchAllInboxes: excludeCatchAllInboxes, before: before).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Int** | Optional result size limit. Note an automatic limit of 100 results is applied. See the paginated &#x60;getAllEmails&#x60; for larger queries. | [optional] [default to 100]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **since** | **Date** | Optional filter by created after given date time | [optional] 
 **excludeCatchAllInboxes** | **Bool** | Optional exclude catch all inboxes | [optional] 
 **before** | **Date** | Optional filter by created before given date time | [optional] 

### Return type

[**[InboxDto]**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getLatestEmailInInbox**
```swift
    open class func getLatestEmailInInbox( inboxId: UUID,  timeoutMillis: Int64) -> Promise<Email>
```

Get latest email in an inbox. Use `WaitForController` to get emails that may not have arrived yet.

Get the newest email in an inbox or wait for one to arrive

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | ID of the inbox you want to get the latest email from
let timeoutMillis = 987 // Int64 | Timeout milliseconds to wait for latest email

// Get latest email in an inbox. Use `WaitForController` to get emails that may not have arrived yet.
InboxControllerAPI.getLatestEmailInInbox(inboxId: inboxId, timeoutMillis: timeoutMillis).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **UUID** | ID of the inbox you want to get the latest email from | 
 **timeoutMillis** | **Int64** | Timeout milliseconds to wait for latest email | 

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getOrganizationInboxes**
```swift
    open class func getOrganizationInboxes( page: Int? = nil,  size: Int? = nil,  sort: Sort_getOrganizationInboxes? = nil,  searchFilter: String? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageOrganizationInboxProjection>
```

List Organization Inboxes Paginated

List organization inboxes in paginated form. These are inboxes created with `allowTeamAccess` flag enabled. Organization inboxes are `readOnly` for non-admin users. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int | Optional page index in list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let searchFilter = "searchFilter_example" // String | Optional search filter (optional)
let since = Date() // Date | Optional filter by created after given date time (optional)
let before = Date() // Date | Optional filter by created before given date time (optional)

// List Organization Inboxes Paginated
InboxControllerAPI.getOrganizationInboxes(page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int** | Optional page index in list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **searchFilter** | **String** | Optional search filter | [optional] 
 **since** | **Date** | Optional filter by created after given date time | [optional] 
 **before** | **Date** | Optional filter by created before given date time | [optional] 

### Return type

[**PageOrganizationInboxProjection**](PageOrganizationInboxProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getScheduledJob**
```swift
    open class func getScheduledJob( jobId: UUID) -> Promise<ScheduledJobDto>
```

Get a scheduled email job

Get a scheduled email job details.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let jobId = 987 // UUID | 

// Get a scheduled email job
InboxControllerAPI.getScheduledJob(jobId: jobId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobId** | **UUID** |  | 

### Return type

[**ScheduledJobDto**](ScheduledJobDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getScheduledJobsByInboxId**
```swift
    open class func getScheduledJobsByInboxId( inboxId: UUID,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getScheduledJobsByInboxId? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageScheduledJobs>
```

Get all scheduled email sending jobs for the inbox

Schedule sending of emails using scheduled jobs.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | 
let page = 987 // Int | Optional page index in scheduled job list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in scheduled job list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)

// Get all scheduled email sending jobs for the inbox
InboxControllerAPI.getScheduledJobsByInboxId(inboxId: inboxId, page: page, size: size, sort: sort, since: since, before: before).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **UUID** |  | 
 **page** | **Int** | Optional page index in scheduled job list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in scheduled job list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 

### Return type

[**PageScheduledJobs**](PageScheduledJobs)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSmtpAccess**
```swift
    open class func getSmtpAccess( inboxId: UUID? = nil) -> Promise<SmtpAccessDetails>
```



Get SMTP access usernames and passwords

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | Inbox ID (optional)

InboxControllerAPI.getSmtpAccess(inboxId: inboxId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **UUID** | Inbox ID | [optional] 

### Return type

[**SmtpAccessDetails**](SmtpAccessDetails)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **isEmailAddressAvailable**
```swift
    open class func isEmailAddressAvailable( emailAddress: String) -> Promise<EmailAvailableResult>
```

Is email address available

Returns whether an email address is available

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailAddress = "emailAddress_example" // String | 

// Is email address available
InboxControllerAPI.isEmailAddressAvailable(emailAddress: emailAddress).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailAddress** | **String** |  | 

### Return type

[**EmailAvailableResult**](EmailAvailableResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **listInboxRulesets**
```swift
    open class func listInboxRulesets( inboxId: UUID,  page: Int? = nil,  size: Int? = nil,  sort: Sort_listInboxRulesets? = nil,  searchFilter: String? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageInboxRulesetDto>
```

List inbox rulesets

List all rulesets attached to an inbox

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | 
let page = 987 // Int | Optional page index in inbox ruleset list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in inbox ruleset list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let searchFilter = "searchFilter_example" // String | Optional search filter (optional)
let since = Date() // Date | Optional filter by created after given date time (optional)
let before = Date() // Date | Optional filter by created before given date time (optional)

// List inbox rulesets
InboxControllerAPI.listInboxRulesets(inboxId: inboxId, page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **UUID** |  | 
 **page** | **Int** | Optional page index in inbox ruleset list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in inbox ruleset list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **searchFilter** | **String** | Optional search filter | [optional] 
 **since** | **Date** | Optional filter by created after given date time | [optional] 
 **before** | **Date** | Optional filter by created before given date time | [optional] 

### Return type

[**PageInboxRulesetDto**](PageInboxRulesetDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **listInboxTrackingPixels**
```swift
    open class func listInboxTrackingPixels( inboxId: UUID,  page: Int? = nil,  size: Int? = nil,  sort: Sort_listInboxTrackingPixels? = nil,  searchFilter: String? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageTrackingPixelProjection>
```

List inbox tracking pixels

List all tracking pixels sent from an inbox

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | 
let page = 987 // Int | Optional page index in inbox tracking pixel list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in inbox tracking pixel list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let searchFilter = "searchFilter_example" // String | Optional search filter (optional)
let since = Date() // Date | Optional filter by created after given date time (optional)
let before = Date() // Date | Optional filter by created before given date time (optional)

// List inbox tracking pixels
InboxControllerAPI.listInboxTrackingPixels(inboxId: inboxId, page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **UUID** |  | 
 **page** | **Int** | Optional page index in inbox tracking pixel list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in inbox tracking pixel list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **searchFilter** | **String** | Optional search filter | [optional] 
 **since** | **Date** | Optional filter by created after given date time | [optional] 
 **before** | **Date** | Optional filter by created before given date time | [optional] 

### Return type

[**PageTrackingPixelProjection**](PageTrackingPixelProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **searchInboxes**
```swift
    open class func searchInboxes( searchInboxesOptions: SearchInboxesOptions) -> Promise<PageInboxProjection>
```

Search all inboxes and return matching inboxes

Search inboxes and return in paginated form. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). You Can also filter by whether an inbox is favorited or use email address pattern. This method is the recommended way to query inboxes. The alternative `getInboxes` method returns a full list of inboxes but is limited to 100 results.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let searchInboxesOptions = SearchInboxesOptions(pageIndex: 123, pageSize: 123, sortDirection: "sortDirection_example", favourite: false, search: "search_example", tag: "tag_example", since: Date(), before: Date(), inboxType: "inboxType_example", inboxFunction: "inboxFunction_example", domainId: 123) // SearchInboxesOptions | 

// Search all inboxes and return matching inboxes
InboxControllerAPI.searchInboxes(searchInboxesOptions: searchInboxesOptions).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchInboxesOptions** | [**SearchInboxesOptions**](SearchInboxesOptions) |  | 

### Return type

[**PageInboxProjection**](PageInboxProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sendEmail**
```swift
    open class func sendEmail( inboxId: UUID,  sendEmailOptions: SendEmailOptions) -> Promise<Void>
```

Send Email

Send an email from an inbox's email address.  The request body should contain the `SendEmailOptions` that include recipients, attachments, body etc. See `SendEmailOptions` for all available properties. Note the `inboxId` refers to the inbox's id not the inbox's email address. See https://www.mailslurp.com/guides/ for more information on how to send emails. This method does not return a sent email entity due to legacy reasons. To send and get a sent email as returned response use the sister method `sendEmailAndConfirm`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | ID of the inbox you want to send the email from
let sendEmailOptions = SendEmailOptions(toContacts: [123], toGroup: 123, to: ["to_example"], from: "from_example", cc: ["cc_example"], bcc: ["bcc_example"], subject: "subject_example", replyTo: "replyTo_example", customHeaders: "TODO", body: "body_example", html: false, isHTML: false, charset: "charset_example", attachments: ["attachments_example"], templateVariables: "TODO", template: 123, sendStrategy: "sendStrategy_example", useInboxName: false, addTrackingPixel: false, filterBouncedRecipients: false, validateEmailAddresses: "validateEmailAddresses_example", ignoreEmptyRecipients: false, isXAmpHtml: false, bodyParts: [SendEmailBodyPart(contentType: "contentType_example", contentBody: "contentBody_example")]) // SendEmailOptions | 

// Send Email
InboxControllerAPI.sendEmail(inboxId: inboxId, sendEmailOptions: sendEmailOptions).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **UUID** | ID of the inbox you want to send the email from | 
 **sendEmailOptions** | [**SendEmailOptions**](SendEmailOptions) |  | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sendEmailAndConfirm**
```swift
    open class func sendEmailAndConfirm( inboxId: UUID,  sendEmailOptions: SendEmailOptions) -> Promise<SentEmailDto>
```

Send email and return sent confirmation

Sister method for standard `sendEmail` method with the benefit of returning a `SentEmail` entity confirming the successful sending of the email with a link to the sent object created for it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | ID of the inbox you want to send the email from
let sendEmailOptions = SendEmailOptions(toContacts: [123], toGroup: 123, to: ["to_example"], from: "from_example", cc: ["cc_example"], bcc: ["bcc_example"], subject: "subject_example", replyTo: "replyTo_example", customHeaders: "TODO", body: "body_example", html: false, isHTML: false, charset: "charset_example", attachments: ["attachments_example"], templateVariables: "TODO", template: 123, sendStrategy: "sendStrategy_example", useInboxName: false, addTrackingPixel: false, filterBouncedRecipients: false, validateEmailAddresses: "validateEmailAddresses_example", ignoreEmptyRecipients: false, isXAmpHtml: false, bodyParts: [SendEmailBodyPart(contentType: "contentType_example", contentBody: "contentBody_example")]) // SendEmailOptions | 

// Send email and return sent confirmation
InboxControllerAPI.sendEmailAndConfirm(inboxId: inboxId, sendEmailOptions: sendEmailOptions).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **UUID** | ID of the inbox you want to send the email from | 
 **sendEmailOptions** | [**SendEmailOptions**](SendEmailOptions) |  | 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sendEmailWithQueue**
```swift
    open class func sendEmailWithQueue( inboxId: UUID,  validateBeforeEnqueue: Bool,  sendEmailOptions: SendEmailOptions) -> Promise<Void>
```

Send email with queue

Send an email using a queue. Will place the email onto a queue that will then be processed and sent. Use this queue method to enable any failed email sending to be recovered. This will prevent lost emails when sending if your account encounters a block or payment issue.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | ID of the inbox you want to send the email from
let validateBeforeEnqueue = true // Bool | Validate before adding to queue
let sendEmailOptions = SendEmailOptions(toContacts: [123], toGroup: 123, to: ["to_example"], from: "from_example", cc: ["cc_example"], bcc: ["bcc_example"], subject: "subject_example", replyTo: "replyTo_example", customHeaders: "TODO", body: "body_example", html: false, isHTML: false, charset: "charset_example", attachments: ["attachments_example"], templateVariables: "TODO", template: 123, sendStrategy: "sendStrategy_example", useInboxName: false, addTrackingPixel: false, filterBouncedRecipients: false, validateEmailAddresses: "validateEmailAddresses_example", ignoreEmptyRecipients: false, isXAmpHtml: false, bodyParts: [SendEmailBodyPart(contentType: "contentType_example", contentBody: "contentBody_example")]) // SendEmailOptions | 

// Send email with queue
InboxControllerAPI.sendEmailWithQueue(inboxId: inboxId, validateBeforeEnqueue: validateBeforeEnqueue, sendEmailOptions: sendEmailOptions).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **UUID** | ID of the inbox you want to send the email from | 
 **validateBeforeEnqueue** | **Bool** | Validate before adding to queue | 
 **sendEmailOptions** | [**SendEmailOptions**](SendEmailOptions) |  | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sendSmtpEnvelope**
```swift
    open class func sendSmtpEnvelope( inboxId: UUID,  sendSMTPEnvelopeOptions: SendSMTPEnvelopeOptions) -> Promise<SentEmailDto>
```

Send email using an SMTP mail envelope and message body and return sent confirmation

Send email using an SMTP envelope containing RCPT TO, MAIL FROM, and a SMTP BODY.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | ID of the inbox you want to send the email from
let sendSMTPEnvelopeOptions = SendSMTPEnvelopeOptions(rcptTo: ["rcptTo_example"], mailFrom: "mailFrom_example", data: "data_example") // SendSMTPEnvelopeOptions | 

// Send email using an SMTP mail envelope and message body and return sent confirmation
InboxControllerAPI.sendSmtpEnvelope(inboxId: inboxId, sendSMTPEnvelopeOptions: sendSMTPEnvelopeOptions).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **UUID** | ID of the inbox you want to send the email from | 
 **sendSMTPEnvelopeOptions** | [**SendSMTPEnvelopeOptions**](SendSMTPEnvelopeOptions) |  | 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sendTestEmail**
```swift
    open class func sendTestEmail( inboxId: UUID) -> Promise<Void>
```

Send a test email to inbox

Send an inbox a test email to test email receiving is working

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | 

// Send a test email to inbox
InboxControllerAPI.sendTestEmail(inboxId: inboxId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **UUID** |  | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sendWithSchedule**
```swift
    open class func sendWithSchedule( inboxId: UUID,  sendEmailOptions: SendEmailOptions,  sendAtTimestamp: Date? = nil,  sendAtNowPlusSeconds: Int64? = nil,  validateBeforeEnqueue: Bool? = nil) -> Promise<ScheduledJobDto>
```

Send email with with delay or schedule

Send an email using a delay. Will place the email onto a scheduler that will then be processed and sent. Use delays to schedule email sending.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | ID of the inbox you want to send the email from
let sendEmailOptions = SendEmailOptions(toContacts: [123], toGroup: 123, to: ["to_example"], from: "from_example", cc: ["cc_example"], bcc: ["bcc_example"], subject: "subject_example", replyTo: "replyTo_example", customHeaders: "TODO", body: "body_example", html: false, isHTML: false, charset: "charset_example", attachments: ["attachments_example"], templateVariables: "TODO", template: 123, sendStrategy: "sendStrategy_example", useInboxName: false, addTrackingPixel: false, filterBouncedRecipients: false, validateEmailAddresses: "validateEmailAddresses_example", ignoreEmptyRecipients: false, isXAmpHtml: false, bodyParts: [SendEmailBodyPart(contentType: "contentType_example", contentBody: "contentBody_example")]) // SendEmailOptions | 
let sendAtTimestamp = Date() // Date | Sending timestamp (optional)
let sendAtNowPlusSeconds = 987 // Int64 | Send after n seconds (optional)
let validateBeforeEnqueue = true // Bool | Validate before adding to queue (optional)

// Send email with with delay or schedule
InboxControllerAPI.sendWithSchedule(inboxId: inboxId, sendEmailOptions: sendEmailOptions, sendAtTimestamp: sendAtTimestamp, sendAtNowPlusSeconds: sendAtNowPlusSeconds, validateBeforeEnqueue: validateBeforeEnqueue).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **UUID** | ID of the inbox you want to send the email from | 
 **sendEmailOptions** | [**SendEmailOptions**](SendEmailOptions) |  | 
 **sendAtTimestamp** | **Date** | Sending timestamp | [optional] 
 **sendAtNowPlusSeconds** | **Int64** | Send after n seconds | [optional] 
 **validateBeforeEnqueue** | **Bool** | Validate before adding to queue | [optional] 

### Return type

[**ScheduledJobDto**](ScheduledJobDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **setInboxFavourited**
```swift
    open class func setInboxFavourited( inboxId: UUID,  setInboxFavouritedOptions: SetInboxFavouritedOptions) -> Promise<InboxDto>
```

Set inbox favourited state

Set and return new favourite state for an inbox

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | ID of inbox to set favourite state
let setInboxFavouritedOptions = SetInboxFavouritedOptions(state: false) // SetInboxFavouritedOptions | 

// Set inbox favourited state
InboxControllerAPI.setInboxFavourited(inboxId: inboxId, setInboxFavouritedOptions: setInboxFavouritedOptions).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **UUID** | ID of inbox to set favourite state | 
 **setInboxFavouritedOptions** | [**SetInboxFavouritedOptions**](SetInboxFavouritedOptions) |  | 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateImapAccess**
```swift
    open class func updateImapAccess( updateImapAccessOptions: UpdateImapAccessOptions,  inboxId: UUID? = nil) -> Promise<Void>
```



Update IMAP access usernames and passwords

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let updateImapAccessOptions = UpdateImapAccessOptions(imapUsername: "imapUsername_example", imapPassword: "imapPassword_example") // UpdateImapAccessOptions | 
let inboxId = 987 // UUID | Inbox ID (optional)

InboxControllerAPI.updateImapAccess(updateImapAccessOptions: updateImapAccessOptions, inboxId: inboxId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateImapAccessOptions** | [**UpdateImapAccessOptions**](UpdateImapAccessOptions) |  | 
 **inboxId** | **UUID** | Inbox ID | [optional] 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateInbox**
```swift
    open class func updateInbox( inboxId: UUID,  updateInboxOptions: UpdateInboxOptions) -> Promise<InboxDto>
```

Update Inbox. Change name and description. Email address is not editable.

Update editable fields on an inbox

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | 
let updateInboxOptions = UpdateInboxOptions(name: "name_example", _description: "_description_example", tags: ["tags_example"], expiresAt: Date(), favourite: false) // UpdateInboxOptions | 

// Update Inbox. Change name and description. Email address is not editable.
InboxControllerAPI.updateInbox(inboxId: inboxId, updateInboxOptions: updateInboxOptions).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **UUID** |  | 
 **updateInboxOptions** | [**UpdateInboxOptions**](UpdateInboxOptions) |  | 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateSmtpAccess**
```swift
    open class func updateSmtpAccess( updateSmtpAccessOptions: UpdateSmtpAccessOptions,  inboxId: UUID? = nil) -> Promise<Void>
```



Update SMTP access usernames and passwords

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let updateSmtpAccessOptions = UpdateSmtpAccessOptions(smtpUsername: "smtpUsername_example", smtpPassword: "smtpPassword_example") // UpdateSmtpAccessOptions | 
let inboxId = 987 // UUID | Inbox ID (optional)

InboxControllerAPI.updateSmtpAccess(updateSmtpAccessOptions: updateSmtpAccessOptions, inboxId: inboxId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateSmtpAccessOptions** | [**UpdateSmtpAccessOptions**](UpdateSmtpAccessOptions) |  | 
 **inboxId** | **UUID** | Inbox ID | [optional] 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

