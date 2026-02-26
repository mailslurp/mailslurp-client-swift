# ConnectorControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createConnector**](ConnectorControllerAPI#createconnector) | **POST** /connectors | Create an inbox connector
[**createConnectorImapConnection**](ConnectorControllerAPI#createconnectorimapconnection) | **POST** /connectors/{id}/imap | Create an inbox connector IMAP connection
[**createConnectorSmtpConnection**](ConnectorControllerAPI#createconnectorsmtpconnection) | **POST** /connectors/{id}/smtp | Create an inbox connector SMTP connection
[**createConnectorSyncSettings**](ConnectorControllerAPI#createconnectorsyncsettings) | **POST** /connectors/{id}/sync-settings | Create an inbox connector sync settings
[**createConnectorWithOptions**](ConnectorControllerAPI#createconnectorwithoptions) | **POST** /connectors/withOptions | Create an inbox connector with options
[**deleteAllConnector**](ConnectorControllerAPI#deleteallconnector) | **DELETE** /connectors | Delete all inbox connectors
[**deleteConnector**](ConnectorControllerAPI#deleteconnector) | **DELETE** /connectors/{id} | Delete an inbox connector
[**deleteConnectorImapConnection**](ConnectorControllerAPI#deleteconnectorimapconnection) | **DELETE** /connectors/{id}/imap | Delete an inbox connector IMAP connection
[**deleteConnectorSmtpConnection**](ConnectorControllerAPI#deleteconnectorsmtpconnection) | **DELETE** /connectors/{id}/smtp | Delete an inbox connector SMTP connection
[**deleteConnectorSyncSettings**](ConnectorControllerAPI#deleteconnectorsyncsettings) | **DELETE** /connectors/{id}/sync-settings | Create an inbox connector sync settings
[**getAllConnectorEvents**](ConnectorControllerAPI#getallconnectorevents) | **GET** /connectors/events | Get all inbox connector events
[**getConnector**](ConnectorControllerAPI#getconnector) | **GET** /connectors/{id} | Get an inbox connector
[**getConnectorByEmailAddress**](ConnectorControllerAPI#getconnectorbyemailaddress) | **GET** /connectors/by-email-address | Get connector by email address
[**getConnectorByInboxId**](ConnectorControllerAPI#getconnectorbyinboxid) | **GET** /connectors/by-inbox-id | Get connector by inbox ID
[**getConnectorByName**](ConnectorControllerAPI#getconnectorbyname) | **GET** /connectors/by-name | Get connector by name
[**getConnectorEvent**](ConnectorControllerAPI#getconnectorevent) | **GET** /connectors/events/{id} | Get an inbox connector event
[**getConnectorEvents**](ConnectorControllerAPI#getconnectorevents) | **GET** /connectors/{id}/events | Get an inbox connector events
[**getConnectorImapConnection**](ConnectorControllerAPI#getconnectorimapconnection) | **GET** /connectors/{id}/imap | Get an inbox connector IMAP connection
[**getConnectorProviderSettings**](ConnectorControllerAPI#getconnectorprovidersettings) | **GET** /connectors/provider-settings | Get SMTP and IMAP connection settings for common mail providers
[**getConnectorSmtpConnection**](ConnectorControllerAPI#getconnectorsmtpconnection) | **GET** /connectors/{id}/smtp | Get an inbox connector SMTP connection
[**getConnectorSyncSettings**](ConnectorControllerAPI#getconnectorsyncsettings) | **GET** /connectors/{id}/sync-settings | Get an inbox connector sync settings
[**getConnectors**](ConnectorControllerAPI#getconnectors) | **GET** /connectors | Get inbox connectors
[**sendEmailFromConnector**](ConnectorControllerAPI#sendemailfromconnector) | **POST** /connectors/{id}/send | Send from an inbox connector
[**syncConnector**](ConnectorControllerAPI#syncconnector) | **POST** /connectors/{id}/sync | Sync an inbox connector
[**testConnectorImapConnection**](ConnectorControllerAPI#testconnectorimapconnection) | **POST** /connectors/{id}/imap/test | Test an inbox connector IMAP connection
[**testConnectorImapConnectionOptions**](ConnectorControllerAPI#testconnectorimapconnectionoptions) | **POST** /connectors/connections/imap/test | Test an inbox connector IMAP connection options
[**testConnectorSmtpConnection**](ConnectorControllerAPI#testconnectorsmtpconnection) | **POST** /connectors/{id}/smtp/test | Test an inbox connector SMTP connection
[**testConnectorSmtpConnectionOptions**](ConnectorControllerAPI#testconnectorsmtpconnectionoptions) | **POST** /connectors/connections/smtp/test | Test an inbox connector SMTP connection options
[**updateConnector**](ConnectorControllerAPI#updateconnector) | **PUT** /connectors/{id} | Update an inbox connector
[**updateConnectorImapConnection**](ConnectorControllerAPI#updateconnectorimapconnection) | **PATCH** /connectors/{id}/imap | Update an inbox connector IMAP connection
[**updateConnectorSmtpConnection**](ConnectorControllerAPI#updateconnectorsmtpconnection) | **PATCH** /connectors/{id}/smtp | Update an inbox connector SMTP connection


# **createConnector**
```swift
    open class func createConnector( createConnectorOptions: CreateConnectorOptions,  inboxId: UUID? = nil) -> Promise<ConnectorDto>
```

Create an inbox connector

Sync emails between external mailboxes and MailSlurp inboxes

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let createConnectorOptions = CreateConnectorOptions(name: "name_example", emailAddress: "emailAddress_example", enabled: false) // CreateConnectorOptions | 
let inboxId = 987 // UUID | Optional inbox ID to associate with the connector (optional)

// Create an inbox connector
ConnectorControllerAPI.createConnector(createConnectorOptions: createConnectorOptions, inboxId: inboxId).then {
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
 **createConnectorOptions** | [**CreateConnectorOptions**](CreateConnectorOptions) |  | 
 **inboxId** | **UUID** | Optional inbox ID to associate with the connector | [optional] 

### Return type

[**ConnectorDto**](ConnectorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createConnectorImapConnection**
```swift
    open class func createConnectorImapConnection( _id: UUID,  createConnectorImapConnectionOptions: CreateConnectorImapConnectionOptions) -> Promise<ConnectorImapConnectionDto>
```

Create an inbox connector IMAP connection

Allows the reading of emails in an external mailbox and syncing to a MailSlurp inbox

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | 
let createConnectorImapConnectionOptions = CreateConnectorImapConnectionOptions(imapSsl: false, imapUsername: "imapUsername_example", imapPassword: "imapPassword_example", selectFolder: "selectFolder_example", searchTerms: "searchTerms_example", imapPort: 123, imapHost: "imapHost_example", enabled: false, startTls: false, proxyEnabled: false, proxyPort: 123, proxyHost: "proxyHost_example", localHostName: "localHostName_example", mechanisms: ["mechanisms_example"], sslTrust: "sslTrust_example", sslProtocols: ["sslProtocols_example"]) // CreateConnectorImapConnectionOptions | 

// Create an inbox connector IMAP connection
ConnectorControllerAPI.createConnectorImapConnection(_id: _id, createConnectorImapConnectionOptions: createConnectorImapConnectionOptions).then {
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
 **_id** | **UUID** |  | 
 **createConnectorImapConnectionOptions** | [**CreateConnectorImapConnectionOptions**](CreateConnectorImapConnectionOptions) |  | 

### Return type

[**ConnectorImapConnectionDto**](ConnectorImapConnectionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createConnectorSmtpConnection**
```swift
    open class func createConnectorSmtpConnection( _id: UUID,  createConnectorSmtpConnectionOptions: CreateConnectorSmtpConnectionOptions) -> Promise<ConnectorSmtpConnectionDto>
```

Create an inbox connector SMTP connection

Allows sending via connector and email is routed to connected inbox and sent via SMTP

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | 
let createConnectorSmtpConnectionOptions = CreateConnectorSmtpConnectionOptions(enabled: false, smtpHost: "smtpHost_example", smtpPort: 123, smtpSsl: false, smtpUsername: "smtpUsername_example", smtpPassword: "smtpPassword_example", smtpMechanisms: ["smtpMechanisms_example"], startTls: false, localHostName: "localHostName_example", proxyHost: "proxyHost_example", proxyPort: 123, proxyEnabled: false, sslTrust: "sslTrust_example", sslProtocols: ["sslProtocols_example"]) // CreateConnectorSmtpConnectionOptions | 

// Create an inbox connector SMTP connection
ConnectorControllerAPI.createConnectorSmtpConnection(_id: _id, createConnectorSmtpConnectionOptions: createConnectorSmtpConnectionOptions).then {
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
 **_id** | **UUID** |  | 
 **createConnectorSmtpConnectionOptions** | [**CreateConnectorSmtpConnectionOptions**](CreateConnectorSmtpConnectionOptions) |  | 

### Return type

[**ConnectorSmtpConnectionDto**](ConnectorSmtpConnectionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createConnectorSyncSettings**
```swift
    open class func createConnectorSyncSettings( _id: UUID,  createConnectorSyncSettingsOptions: CreateConnectorSyncSettingsOptions) -> Promise<ConnectorSyncSettingsDto>
```

Create an inbox connector sync settings

Configure automatic pull or emails from external inboxes using an interval or schedule

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | 
let createConnectorSyncSettingsOptions = CreateConnectorSyncSettingsOptions(syncEnabled: false, syncScheduleType: "syncScheduleType_example", syncInterval: 123) // CreateConnectorSyncSettingsOptions | 

// Create an inbox connector sync settings
ConnectorControllerAPI.createConnectorSyncSettings(_id: _id, createConnectorSyncSettingsOptions: createConnectorSyncSettingsOptions).then {
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
 **_id** | **UUID** |  | 
 **createConnectorSyncSettingsOptions** | [**CreateConnectorSyncSettingsOptions**](CreateConnectorSyncSettingsOptions) |  | 

### Return type

[**ConnectorSyncSettingsDto**](ConnectorSyncSettingsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createConnectorWithOptions**
```swift
    open class func createConnectorWithOptions( createConnectorWithOptions: CreateConnectorWithOptions,  inboxId: UUID? = nil) -> Promise<ConnectorDto>
```

Create an inbox connector with options

Sync emails between external mailboxes and MailSlurp inboxes

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let createConnectorWithOptions = CreateConnectorWithOptions(createConnectorOptions: CreateConnectorOptions(name: "name_example", emailAddress: "emailAddress_example", enabled: false), createConnectorImapConnectionOptions: CreateConnectorImapConnectionOptions(imapSsl: false, imapUsername: "imapUsername_example", imapPassword: "imapPassword_example", selectFolder: "selectFolder_example", searchTerms: "searchTerms_example", imapPort: 123, imapHost: "imapHost_example", enabled: false, startTls: false, proxyEnabled: false, proxyPort: 123, proxyHost: "proxyHost_example", localHostName: "localHostName_example", mechanisms: ["mechanisms_example"], sslTrust: "sslTrust_example", sslProtocols: ["sslProtocols_example"]), createConnectorSmtpConnectionOptions: CreateConnectorSmtpConnectionOptions(enabled: false, smtpHost: "smtpHost_example", smtpPort: 123, smtpSsl: false, smtpUsername: "smtpUsername_example", smtpPassword: "smtpPassword_example", smtpMechanisms: ["smtpMechanisms_example"], startTls: false, localHostName: "localHostName_example", proxyHost: "proxyHost_example", proxyPort: 123, proxyEnabled: false, sslTrust: "sslTrust_example", sslProtocols: ["sslProtocols_example"]), createConnectorSyncSettingsOptions: CreateConnectorSyncSettingsOptions(syncEnabled: false, syncScheduleType: "syncScheduleType_example", syncInterval: 123)) // CreateConnectorWithOptions | 
let inboxId = 987 // UUID | Optional inbox ID to associate with the connector (optional)

// Create an inbox connector with options
ConnectorControllerAPI.createConnectorWithOptions(createConnectorWithOptions: createConnectorWithOptions, inboxId: inboxId).then {
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
 **createConnectorWithOptions** | [**CreateConnectorWithOptions**](CreateConnectorWithOptions) |  | 
 **inboxId** | **UUID** | Optional inbox ID to associate with the connector | [optional] 

### Return type

[**ConnectorDto**](ConnectorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteAllConnector**
```swift
    open class func deleteAllConnector() -> Promise<Void>
```

Delete all inbox connectors

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Delete all inbox connectors
ConnectorControllerAPI.deleteAllConnector().then {
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

# **deleteConnector**
```swift
    open class func deleteConnector( _id: UUID) -> Promise<Void>
```

Delete an inbox connector

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | 

// Delete an inbox connector
ConnectorControllerAPI.deleteConnector(_id: _id).then {
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
 **_id** | **UUID** |  | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteConnectorImapConnection**
```swift
    open class func deleteConnectorImapConnection( _id: UUID) -> Promise<Void>
```

Delete an inbox connector IMAP connection

Delete IMAP connection for external inbox

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | 

// Delete an inbox connector IMAP connection
ConnectorControllerAPI.deleteConnectorImapConnection(_id: _id).then {
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
 **_id** | **UUID** |  | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteConnectorSmtpConnection**
```swift
    open class func deleteConnectorSmtpConnection( _id: UUID) -> Promise<Void>
```

Delete an inbox connector SMTP connection

Delete SMTP connection for external inbox

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | 

// Delete an inbox connector SMTP connection
ConnectorControllerAPI.deleteConnectorSmtpConnection(_id: _id).then {
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
 **_id** | **UUID** |  | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteConnectorSyncSettings**
```swift
    open class func deleteConnectorSyncSettings( _id: UUID) -> Promise<Void>
```

Create an inbox connector sync settings

Configure automatic pull or emails from external inboxes using an interval or schedule

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | 

// Create an inbox connector sync settings
ConnectorControllerAPI.deleteConnectorSyncSettings(_id: _id).then {
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
 **_id** | **UUID** |  | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllConnectorEvents**
```swift
    open class func getAllConnectorEvents( _id: UUID? = nil,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getAllConnectorEvents? = nil,  since: Date? = nil,  before: Date? = nil,  eventType: EventType_getAllConnectorEvents? = nil) -> Promise<PageConnectorEvents>
```

Get all inbox connector events

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | Optional connector ID (optional)
let page = 987 // Int | Optional page index in connector list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in connector list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)
let eventType = "eventType_example" // String | Filter by event type (optional)

// Get all inbox connector events
ConnectorControllerAPI.getAllConnectorEvents(_id: _id, page: page, size: size, sort: sort, since: since, before: before, eventType: eventType).then {
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
 **_id** | **UUID** | Optional connector ID | [optional] 
 **page** | **Int** | Optional page index in connector list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in connector list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 
 **eventType** | **String** | Filter by event type | [optional] 

### Return type

[**PageConnectorEvents**](PageConnectorEvents)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConnector**
```swift
    open class func getConnector( _id: UUID) -> Promise<ConnectorDto>
```

Get an inbox connector

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | 

// Get an inbox connector
ConnectorControllerAPI.getConnector(_id: _id).then {
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
 **_id** | **UUID** |  | 

### Return type

[**ConnectorDto**](ConnectorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConnectorByEmailAddress**
```swift
    open class func getConnectorByEmailAddress( emailAddress: String) -> Promise<OptionalConnectorDto>
```

Get connector by email address

Find an inbox connector by email address

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailAddress = "emailAddress_example" // String | Email address to search for connector by

// Get connector by email address
ConnectorControllerAPI.getConnectorByEmailAddress(emailAddress: emailAddress).then {
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
 **emailAddress** | **String** | Email address to search for connector by | 

### Return type

[**OptionalConnectorDto**](OptionalConnectorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConnectorByInboxId**
```swift
    open class func getConnectorByInboxId( inboxId: UUID) -> Promise<OptionalConnectorDto>
```

Get connector by inbox ID

Find an inbox connector by inbox ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | Inbox ID to search for connector by

// Get connector by inbox ID
ConnectorControllerAPI.getConnectorByInboxId(inboxId: inboxId).then {
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
 **inboxId** | **UUID** | Inbox ID to search for connector by | 

### Return type

[**OptionalConnectorDto**](OptionalConnectorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConnectorByName**
```swift
    open class func getConnectorByName( name: String) -> Promise<OptionalConnectorDto>
```

Get connector by name

Find an inbox connector by name

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let name = "name_example" // String | Name to search for connector by

// Get connector by name
ConnectorControllerAPI.getConnectorByName(name: name).then {
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
 **name** | **String** | Name to search for connector by | 

### Return type

[**OptionalConnectorDto**](OptionalConnectorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConnectorEvent**
```swift
    open class func getConnectorEvent( _id: UUID) -> Promise<ConnectorEventDto>
```

Get an inbox connector event

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | 

// Get an inbox connector event
ConnectorControllerAPI.getConnectorEvent(_id: _id).then {
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
 **_id** | **UUID** |  | 

### Return type

[**ConnectorEventDto**](ConnectorEventDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConnectorEvents**
```swift
    open class func getConnectorEvents( _id: UUID,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getConnectorEvents? = nil,  since: Date? = nil,  before: Date? = nil,  eventType: EventType_getConnectorEvents? = nil) -> Promise<PageConnectorEvents>
```

Get an inbox connector events

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | 
let page = 987 // Int | Optional page index in connector list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in connector list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)
let eventType = "eventType_example" // String | Filter by event type (optional)

// Get an inbox connector events
ConnectorControllerAPI.getConnectorEvents(_id: _id, page: page, size: size, sort: sort, since: since, before: before, eventType: eventType).then {
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
 **_id** | **UUID** |  | 
 **page** | **Int** | Optional page index in connector list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in connector list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 
 **eventType** | **String** | Filter by event type | [optional] 

### Return type

[**PageConnectorEvents**](PageConnectorEvents)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConnectorImapConnection**
```swift
    open class func getConnectorImapConnection( _id: UUID) -> Promise<OptionalConnectorImapConnectionDto>
```

Get an inbox connector IMAP connection

Get IMAP connection for external inbox

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | 

// Get an inbox connector IMAP connection
ConnectorControllerAPI.getConnectorImapConnection(_id: _id).then {
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
 **_id** | **UUID** |  | 

### Return type

[**OptionalConnectorImapConnectionDto**](OptionalConnectorImapConnectionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConnectorProviderSettings**
```swift
    open class func getConnectorProviderSettings() -> Promise<ConnectorProviderSettingsDto>
```

Get SMTP and IMAP connection settings for common mail providers

Get common mail provider SMTP and IMAP connection settings

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Get SMTP and IMAP connection settings for common mail providers
ConnectorControllerAPI.getConnectorProviderSettings().then {
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

[**ConnectorProviderSettingsDto**](ConnectorProviderSettingsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConnectorSmtpConnection**
```swift
    open class func getConnectorSmtpConnection( _id: UUID) -> Promise<OptionalConnectorSmtpConnectionDto>
```

Get an inbox connector SMTP connection

Get SMTP connection for external inbox

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | 

// Get an inbox connector SMTP connection
ConnectorControllerAPI.getConnectorSmtpConnection(_id: _id).then {
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
 **_id** | **UUID** |  | 

### Return type

[**OptionalConnectorSmtpConnectionDto**](OptionalConnectorSmtpConnectionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConnectorSyncSettings**
```swift
    open class func getConnectorSyncSettings( _id: UUID) -> Promise<OptionalConnectorSyncSettingsDto>
```

Get an inbox connector sync settings

Get sync settings for connection with external inbox

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | 

// Get an inbox connector sync settings
ConnectorControllerAPI.getConnectorSyncSettings(_id: _id).then {
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
 **_id** | **UUID** |  | 

### Return type

[**OptionalConnectorSyncSettingsDto**](OptionalConnectorSyncSettingsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConnectors**
```swift
    open class func getConnectors( page: Int? = nil,  size: Int? = nil,  sort: Sort_getConnectors? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageConnector>
```

Get inbox connectors

List inbox connectors that sync external emails to MailSlurp inboxes

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int | Optional page index in connector list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in connector list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)

// Get inbox connectors
ConnectorControllerAPI.getConnectors(page: page, size: size, sort: sort, since: since, before: before).then {
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
 **page** | **Int** | Optional page index in connector list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in connector list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 

### Return type

[**PageConnector**](PageConnector)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sendEmailFromConnector**
```swift
    open class func sendEmailFromConnector( _id: UUID,  sendEmailOptions: SendEmailOptions,  useFallback: Bool? = nil) -> Promise<SentEmailDto>
```

Send from an inbox connector

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | 
let sendEmailOptions = SendEmailOptions(toContacts: [123], toGroup: 123, to: ["to_example"], from: "from_example", fromName: "fromName_example", cc: ["cc_example"], bcc: ["bcc_example"], subject: "subject_example", replyTo: "replyTo_example", customHeaders: "TODO", body: "body_example", html: false, isHTML: false, charset: "charset_example", attachments: ["attachments_example"], templateVariables: "TODO", template: 123, sendStrategy: "sendStrategy_example", useInboxName: false, addTrackingPixel: false, filterBouncedRecipients: false, validateEmailAddresses: "validateEmailAddresses_example", ignoreEmptyRecipients: false, isXAmpHtml: false, bodyParts: [SendEmailBodyPart(contentType: "contentType_example", contentBody: "contentBody_example")]) // SendEmailOptions | 
let useFallback = true // Bool |  (optional)

// Send from an inbox connector
ConnectorControllerAPI.sendEmailFromConnector(_id: _id, sendEmailOptions: sendEmailOptions, useFallback: useFallback).then {
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
 **_id** | **UUID** |  | 
 **sendEmailOptions** | [**SendEmailOptions**](SendEmailOptions) |  | 
 **useFallback** | **Bool** |  | [optional] 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **syncConnector**
```swift
    open class func syncConnector( _id: UUID,  since: Date? = nil,  folder: String? = nil,  logging: Bool? = nil) -> Promise<ConnectorSyncRequestResult>
```

Sync an inbox connector

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | 
let since = Date() // Date | Date to request emails since (optional)
let folder = "folder_example" // String | Which folder to sync emails with (optional)
let logging = true // Bool | Enable or disable logging for the sync operation (optional)

// Sync an inbox connector
ConnectorControllerAPI.syncConnector(_id: _id, since: since, folder: folder, logging: logging).then {
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
 **_id** | **UUID** |  | 
 **since** | **Date** | Date to request emails since | [optional] 
 **folder** | **String** | Which folder to sync emails with | [optional] 
 **logging** | **Bool** | Enable or disable logging for the sync operation | [optional] 

### Return type

[**ConnectorSyncRequestResult**](ConnectorSyncRequestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testConnectorImapConnection**
```swift
    open class func testConnectorImapConnection( _id: UUID,  createConnectorImapConnectionOptions: CreateConnectorImapConnectionOptions? = nil) -> Promise<ConnectorImapConnectionTestResult>
```

Test an inbox connector IMAP connection

Test the IMAP connection for a connector

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | 
let createConnectorImapConnectionOptions = CreateConnectorImapConnectionOptions(imapSsl: false, imapUsername: "imapUsername_example", imapPassword: "imapPassword_example", selectFolder: "selectFolder_example", searchTerms: "searchTerms_example", imapPort: 123, imapHost: "imapHost_example", enabled: false, startTls: false, proxyEnabled: false, proxyPort: 123, proxyHost: "proxyHost_example", localHostName: "localHostName_example", mechanisms: ["mechanisms_example"], sslTrust: "sslTrust_example", sslProtocols: ["sslProtocols_example"]) // CreateConnectorImapConnectionOptions |  (optional)

// Test an inbox connector IMAP connection
ConnectorControllerAPI.testConnectorImapConnection(_id: _id, createConnectorImapConnectionOptions: createConnectorImapConnectionOptions).then {
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
 **_id** | **UUID** |  | 
 **createConnectorImapConnectionOptions** | [**CreateConnectorImapConnectionOptions**](CreateConnectorImapConnectionOptions) |  | [optional] 

### Return type

[**ConnectorImapConnectionTestResult**](ConnectorImapConnectionTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testConnectorImapConnectionOptions**
```swift
    open class func testConnectorImapConnectionOptions( createConnectorImapConnectionOptions: CreateConnectorImapConnectionOptions) -> Promise<ConnectorImapConnectionTestResult>
```

Test an inbox connector IMAP connection options

Test the IMAP connection options for a connector

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let createConnectorImapConnectionOptions = CreateConnectorImapConnectionOptions(imapSsl: false, imapUsername: "imapUsername_example", imapPassword: "imapPassword_example", selectFolder: "selectFolder_example", searchTerms: "searchTerms_example", imapPort: 123, imapHost: "imapHost_example", enabled: false, startTls: false, proxyEnabled: false, proxyPort: 123, proxyHost: "proxyHost_example", localHostName: "localHostName_example", mechanisms: ["mechanisms_example"], sslTrust: "sslTrust_example", sslProtocols: ["sslProtocols_example"]) // CreateConnectorImapConnectionOptions | 

// Test an inbox connector IMAP connection options
ConnectorControllerAPI.testConnectorImapConnectionOptions(createConnectorImapConnectionOptions: createConnectorImapConnectionOptions).then {
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
 **createConnectorImapConnectionOptions** | [**CreateConnectorImapConnectionOptions**](CreateConnectorImapConnectionOptions) |  | 

### Return type

[**ConnectorImapConnectionTestResult**](ConnectorImapConnectionTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testConnectorSmtpConnection**
```swift
    open class func testConnectorSmtpConnection( _id: UUID,  createConnectorSmtpConnectionOptions: CreateConnectorSmtpConnectionOptions? = nil) -> Promise<ConnectorSmtpConnectionTestResult>
```

Test an inbox connector SMTP connection

Test the SMTP connection for a connector

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | 
let createConnectorSmtpConnectionOptions = CreateConnectorSmtpConnectionOptions(enabled: false, smtpHost: "smtpHost_example", smtpPort: 123, smtpSsl: false, smtpUsername: "smtpUsername_example", smtpPassword: "smtpPassword_example", smtpMechanisms: ["smtpMechanisms_example"], startTls: false, localHostName: "localHostName_example", proxyHost: "proxyHost_example", proxyPort: 123, proxyEnabled: false, sslTrust: "sslTrust_example", sslProtocols: ["sslProtocols_example"]) // CreateConnectorSmtpConnectionOptions |  (optional)

// Test an inbox connector SMTP connection
ConnectorControllerAPI.testConnectorSmtpConnection(_id: _id, createConnectorSmtpConnectionOptions: createConnectorSmtpConnectionOptions).then {
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
 **_id** | **UUID** |  | 
 **createConnectorSmtpConnectionOptions** | [**CreateConnectorSmtpConnectionOptions**](CreateConnectorSmtpConnectionOptions) |  | [optional] 

### Return type

[**ConnectorSmtpConnectionTestResult**](ConnectorSmtpConnectionTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testConnectorSmtpConnectionOptions**
```swift
    open class func testConnectorSmtpConnectionOptions( createConnectorSmtpConnectionOptions: CreateConnectorSmtpConnectionOptions) -> Promise<ConnectorSmtpConnectionTestResult>
```

Test an inbox connector SMTP connection options

Test the SMTP connection options for a connector

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let createConnectorSmtpConnectionOptions = CreateConnectorSmtpConnectionOptions(enabled: false, smtpHost: "smtpHost_example", smtpPort: 123, smtpSsl: false, smtpUsername: "smtpUsername_example", smtpPassword: "smtpPassword_example", smtpMechanisms: ["smtpMechanisms_example"], startTls: false, localHostName: "localHostName_example", proxyHost: "proxyHost_example", proxyPort: 123, proxyEnabled: false, sslTrust: "sslTrust_example", sslProtocols: ["sslProtocols_example"]) // CreateConnectorSmtpConnectionOptions | 

// Test an inbox connector SMTP connection options
ConnectorControllerAPI.testConnectorSmtpConnectionOptions(createConnectorSmtpConnectionOptions: createConnectorSmtpConnectionOptions).then {
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
 **createConnectorSmtpConnectionOptions** | [**CreateConnectorSmtpConnectionOptions**](CreateConnectorSmtpConnectionOptions) |  | 

### Return type

[**ConnectorSmtpConnectionTestResult**](ConnectorSmtpConnectionTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateConnector**
```swift
    open class func updateConnector( _id: UUID,  createConnectorOptions: CreateConnectorOptions) -> Promise<ConnectorDto>
```

Update an inbox connector

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | 
let createConnectorOptions = CreateConnectorOptions(name: "name_example", emailAddress: "emailAddress_example", enabled: false) // CreateConnectorOptions | 

// Update an inbox connector
ConnectorControllerAPI.updateConnector(_id: _id, createConnectorOptions: createConnectorOptions).then {
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
 **_id** | **UUID** |  | 
 **createConnectorOptions** | [**CreateConnectorOptions**](CreateConnectorOptions) |  | 

### Return type

[**ConnectorDto**](ConnectorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateConnectorImapConnection**
```swift
    open class func updateConnectorImapConnection( _id: UUID,  createConnectorImapConnectionOptions: CreateConnectorImapConnectionOptions) -> Promise<ConnectorImapConnectionDto>
```

Update an inbox connector IMAP connection

Update IMAP connection for external inbox

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | 
let createConnectorImapConnectionOptions = CreateConnectorImapConnectionOptions(imapSsl: false, imapUsername: "imapUsername_example", imapPassword: "imapPassword_example", selectFolder: "selectFolder_example", searchTerms: "searchTerms_example", imapPort: 123, imapHost: "imapHost_example", enabled: false, startTls: false, proxyEnabled: false, proxyPort: 123, proxyHost: "proxyHost_example", localHostName: "localHostName_example", mechanisms: ["mechanisms_example"], sslTrust: "sslTrust_example", sslProtocols: ["sslProtocols_example"]) // CreateConnectorImapConnectionOptions | 

// Update an inbox connector IMAP connection
ConnectorControllerAPI.updateConnectorImapConnection(_id: _id, createConnectorImapConnectionOptions: createConnectorImapConnectionOptions).then {
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
 **_id** | **UUID** |  | 
 **createConnectorImapConnectionOptions** | [**CreateConnectorImapConnectionOptions**](CreateConnectorImapConnectionOptions) |  | 

### Return type

[**ConnectorImapConnectionDto**](ConnectorImapConnectionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateConnectorSmtpConnection**
```swift
    open class func updateConnectorSmtpConnection( _id: UUID,  createConnectorSmtpConnectionOptions: CreateConnectorSmtpConnectionOptions) -> Promise<ConnectorSmtpConnectionDto>
```

Update an inbox connector SMTP connection

Update SMTP connection for external inbox

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | 
let createConnectorSmtpConnectionOptions = CreateConnectorSmtpConnectionOptions(enabled: false, smtpHost: "smtpHost_example", smtpPort: 123, smtpSsl: false, smtpUsername: "smtpUsername_example", smtpPassword: "smtpPassword_example", smtpMechanisms: ["smtpMechanisms_example"], startTls: false, localHostName: "localHostName_example", proxyHost: "proxyHost_example", proxyPort: 123, proxyEnabled: false, sslTrust: "sslTrust_example", sslProtocols: ["sslProtocols_example"]) // CreateConnectorSmtpConnectionOptions | 

// Update an inbox connector SMTP connection
ConnectorControllerAPI.updateConnectorSmtpConnection(_id: _id, createConnectorSmtpConnectionOptions: createConnectorSmtpConnectionOptions).then {
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
 **_id** | **UUID** |  | 
 **createConnectorSmtpConnectionOptions** | [**CreateConnectorSmtpConnectionOptions**](CreateConnectorSmtpConnectionOptions) |  | 

### Return type

[**ConnectorSmtpConnectionDto**](ConnectorSmtpConnectionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

