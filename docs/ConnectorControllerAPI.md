# ConnectorControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createConnector**](ConnectorControllerAPI#createconnector) | **POST** /connectors | Create an inbox connector
[**createConnectorImapConnection**](ConnectorControllerAPI#createconnectorimapconnection) | **POST** /connectors/{id}/imap | Create an inbox connector IMAP connection
[**createConnectorSmtpConnection**](ConnectorControllerAPI#createconnectorsmtpconnection) | **POST** /connectors/{id}/smtp | Create an inbox connector SMTP connection
[**deleteAllConnector**](ConnectorControllerAPI#deleteallconnector) | **DELETE** /connectors | Delete all inbox connectors
[**deleteConnector**](ConnectorControllerAPI#deleteconnector) | **DELETE** /connectors/{id} | Delete an inbox connector
[**deleteConnectorImapConnection**](ConnectorControllerAPI#deleteconnectorimapconnection) | **DELETE** /connectors/{id}/imap | Delete an inbox connector IMAP connection
[**deleteConnectorSmtpConnection**](ConnectorControllerAPI#deleteconnectorsmtpconnection) | **DELETE** /connectors/{id}/smtp | Delete an inbox connector SMTP connection
[**getAllConnectorSyncEvents**](ConnectorControllerAPI#getallconnectorsyncevents) | **GET** /connectors/events | Get all inbox connector sync events
[**getConnector**](ConnectorControllerAPI#getconnector) | **GET** /connectors/{id} | Get an inbox connector
[**getConnectorSyncEvent**](ConnectorControllerAPI#getconnectorsyncevent) | **GET** /connectors/events/{id} | Get an inbox connector sync event
[**getConnectorSyncEvents**](ConnectorControllerAPI#getconnectorsyncevents) | **GET** /connectors/{id}/events | Get an inbox connector sync events
[**getConnectors**](ConnectorControllerAPI#getconnectors) | **GET** /connectors | Get inbox connectors
[**syncConnector**](ConnectorControllerAPI#syncconnector) | **POST** /connectors/{id}/sync | Sync an inbox connector
[**updateConnector**](ConnectorControllerAPI#updateconnector) | **PUT** /connectors/{id} | Update an inbox connector


# **createConnector**
```swift
    open class func createConnector( createConnectorOptions: CreateConnectorOptions) -> Promise<ConnectorDto>
```

Create an inbox connector

Sync emails between external mailboxes and MailSlurp inboxes

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let createConnectorOptions = CreateConnectorOptions(syncEnabled: false, syncScheduleType: "syncScheduleType_example", syncInterval: 123, name: "name_example", emailAddress: "emailAddress_example", enabled: false) // CreateConnectorOptions | 

// Create an inbox connector
ConnectorControllerAPI.createConnector(createConnectorOptions: createConnectorOptions).then {
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
let createConnectorImapConnectionOptions = CreateConnectorImapConnectionOptions(imapSsl: false, imapUsername: "imapUsername_example", imapPassword: "imapPassword_example", selectFolder: "selectFolder_example", searchTerms: "searchTerms_example", imapPort: 123, imapHost: "imapHost_example", enabled: false) // CreateConnectorImapConnectionOptions | 

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
let createConnectorSmtpConnectionOptions = CreateConnectorSmtpConnectionOptions(enabled: false, smtpHost: "smtpHost_example", smtpPort: 123, smtpSsl: false, smtpUsername: "smtpUsername_example", smtpPassword: "smtpPassword_example") // CreateConnectorSmtpConnectionOptions | 

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

# **getAllConnectorSyncEvents**
```swift
    open class func getAllConnectorSyncEvents( page: Int? = nil,  size: Int? = nil,  sort: Sort_getAllConnectorSyncEvents? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageConnectorSyncEvents>
```

Get all inbox connector sync events

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int | Optional page index in connector list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in connector list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)

// Get all inbox connector sync events
ConnectorControllerAPI.getAllConnectorSyncEvents(page: page, size: size, sort: sort, since: since, before: before).then {
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

[**PageConnectorSyncEvents**](PageConnectorSyncEvents)

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

# **getConnectorSyncEvent**
```swift
    open class func getConnectorSyncEvent( _id: UUID) -> Promise<ConnectorSyncEventDto>
```

Get an inbox connector sync event

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | 

// Get an inbox connector sync event
ConnectorControllerAPI.getConnectorSyncEvent(_id: _id).then {
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

[**ConnectorSyncEventDto**](ConnectorSyncEventDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConnectorSyncEvents**
```swift
    open class func getConnectorSyncEvents( _id: UUID,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getConnectorSyncEvents? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageConnectorSyncEvents>
```

Get an inbox connector sync events

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

// Get an inbox connector sync events
ConnectorControllerAPI.getConnectorSyncEvents(_id: _id, page: page, size: size, sort: sort, since: since, before: before).then {
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

### Return type

[**PageConnectorSyncEvents**](PageConnectorSyncEvents)

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

# **syncConnector**
```swift
    open class func syncConnector( _id: UUID) -> Promise<ConnectorSyncRequestResult>
```

Sync an inbox connector

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | 

// Sync an inbox connector
ConnectorControllerAPI.syncConnector(_id: _id).then {
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

[**ConnectorSyncRequestResult**](ConnectorSyncRequestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
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
let createConnectorOptions = CreateConnectorOptions(syncEnabled: false, syncScheduleType: "syncScheduleType_example", syncInterval: 123, name: "name_example", emailAddress: "emailAddress_example", enabled: false) // CreateConnectorOptions | 

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

