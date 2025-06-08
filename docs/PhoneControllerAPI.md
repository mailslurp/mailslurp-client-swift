# PhoneControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createEmergencyAddress**](PhoneControllerAPI#createemergencyaddress) | **POST** /phone/emergency-addresses | Create an emergency address
[**createPhoneNumber**](PhoneControllerAPI#createphonenumber) | **POST** /phone | Add phone number to your account. Only works if you have already added a plan and an initial phone number in your account and acknowledged the pricing and terms of service by enabling API phone creation.
[**deleteEmergencyAddress**](PhoneControllerAPI#deleteemergencyaddress) | **DELETE** /phone/emergency-addresses/{addressId} | Delete an emergency address
[**deletePhoneNumber**](PhoneControllerAPI#deletephonenumber) | **DELETE** /phone/numbers/{phoneNumberId} | Delete a phone number
[**getAllPhoneMessageThreads**](PhoneControllerAPI#getallphonemessagethreads) | **GET** /phone/numbers/message-threads | Get the latest messages for all phones
[**getConsentStatus**](PhoneControllerAPI#getconsentstatus) | **GET** /phone/consent | Get consent status
[**getEmergencyAddress**](PhoneControllerAPI#getemergencyaddress) | **GET** /phone/emergency-addresses/{addressId} | Get an emergency address
[**getEmergencyAddresses**](PhoneControllerAPI#getemergencyaddresses) | **GET** /phone/emergency-addresses | Get emergency addresses
[**getPhoneMessageThreadItems**](PhoneControllerAPI#getphonemessagethreaditems) | **GET** /phone/numbers/{phoneNumberId}/message-threads/{otherNumber} | Get messages in a phone thread
[**getPhoneMessageThreads**](PhoneControllerAPI#getphonemessagethreads) | **GET** /phone/numbers/{phoneNumberId}/message-threads | Get the latest message preview for a thread
[**getPhoneNumber**](PhoneControllerAPI#getphonenumber) | **GET** /phone/numbers/{phoneNumberId} | Get a phone number by ID
[**getPhoneNumberByName**](PhoneControllerAPI#getphonenumberbyname) | **GET** /phone/numbers/by-name | Get a phone number by name
[**getPhoneNumberByPhoneNumber**](PhoneControllerAPI#getphonenumberbyphonenumber) | **GET** /phone/numbers/by-phone-number | Get a phone number by phone number
[**getPhoneNumbers**](PhoneControllerAPI#getphonenumbers) | **GET** /phone/numbers | Get phone numbers
[**getPhonePlans**](PhoneControllerAPI#getphoneplans) | **GET** /phone/plans | Get phone plans
[**getPhonePlansAvailability**](PhoneControllerAPI#getphoneplansavailability) | **GET** /phone/plans/availability | Get phone plans availability
[**getSentSmsByPhoneNumber**](PhoneControllerAPI#getsentsmsbyphonenumber) | **GET** /phone/numbers/{phoneNumberId}/sms-sent | List sent TXT messages for a phone number
[**getSmsByPhoneNumber**](PhoneControllerAPI#getsmsbyphonenumber) | **GET** /phone/numbers/{phoneNumberId}/sms | List SMS messages for a phone number
[**sendSmsFromPhoneNumber**](PhoneControllerAPI#sendsmsfromphonenumber) | **POST** /phone/numbers/{phoneNumberId}/sms | Send TXT message from a phone number
[**setConsentStatus**](PhoneControllerAPI#setconsentstatus) | **POST** /phone/consent | Set consent status
[**setPhoneFavourited**](PhoneControllerAPI#setphonefavourited) | **PUT** /phone/numbers/{phoneNumberId}/favourite | Set phone favourited state
[**testPhoneNumberSendSms**](PhoneControllerAPI#testphonenumbersendsms) | **POST** /phone/numbers/{phoneNumberId}/test | Test sending an SMS to a number
[**updatePhoneNumber**](PhoneControllerAPI#updatephonenumber) | **PUT** /phone/numbers/{phoneNumberId} | Update a phone number
[**validatePhoneNumber**](PhoneControllerAPI#validatephonenumber) | **POST** /phone/validate | Verify validity of a phone number


# **createEmergencyAddress**
```swift
    open class func createEmergencyAddress( createEmergencyAddressOptions: CreateEmergencyAddressOptions) -> Promise<EmergencyAddress>
```

Create an emergency address

Add an emergency address to a phone number

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let createEmergencyAddressOptions = CreateEmergencyAddressOptions(customerName: "customerName_example", address1: "address1_example", city: "city_example", region: "region_example", postalCode: "postalCode_example", isoCountryCode: "isoCountryCode_example", displayName: "displayName_example") // CreateEmergencyAddressOptions | 

// Create an emergency address
PhoneControllerAPI.createEmergencyAddress(createEmergencyAddressOptions: createEmergencyAddressOptions).then {
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
 **createEmergencyAddressOptions** | [**CreateEmergencyAddressOptions**](CreateEmergencyAddressOptions) |  | 

### Return type

[**EmergencyAddress**](EmergencyAddress)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createPhoneNumber**
```swift
    open class func createPhoneNumber( createPhoneNumberOptions: CreatePhoneNumberOptions) -> Promise<PhoneNumberDto>
```

Add phone number to your account. Only works if you have already added a plan and an initial phone number in your account and acknowledged the pricing and terms of service by enabling API phone creation.

Create new phone number

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let createPhoneNumberOptions = CreatePhoneNumberOptions(phoneCountry: "phoneCountry_example", name: "name_example", _description: "_description_example", schedule: "schedule_example") // CreatePhoneNumberOptions | 

// Add phone number to your account. Only works if you have already added a plan and an initial phone number in your account and acknowledged the pricing and terms of service by enabling API phone creation.
PhoneControllerAPI.createPhoneNumber(createPhoneNumberOptions: createPhoneNumberOptions).then {
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
 **createPhoneNumberOptions** | [**CreatePhoneNumberOptions**](CreatePhoneNumberOptions) |  | 

### Return type

[**PhoneNumberDto**](PhoneNumberDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteEmergencyAddress**
```swift
    open class func deleteEmergencyAddress( addressId: UUID) -> Promise<EmptyResponseDto>
```

Delete an emergency address

Delete an emergency address

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let addressId = 987 // UUID | 

// Delete an emergency address
PhoneControllerAPI.deleteEmergencyAddress(addressId: addressId).then {
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
 **addressId** | **UUID** |  | 

### Return type

[**EmptyResponseDto**](EmptyResponseDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deletePhoneNumber**
```swift
    open class func deletePhoneNumber( phoneNumberId: UUID) -> Promise<Void>
```

Delete a phone number

Remove phone number from account

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let phoneNumberId = 987 // UUID | 

// Delete a phone number
PhoneControllerAPI.deletePhoneNumber(phoneNumberId: phoneNumberId).then {
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
 **phoneNumberId** | **UUID** |  | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllPhoneMessageThreads**
```swift
    open class func getAllPhoneMessageThreads( page: Int? = nil,  size: Int? = nil) -> Promise<PagePhoneMessageThreadProjection>
```

Get the latest messages for all phones

List all message threads for all phones

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int |  (optional) (default to 0)
let size = 987 // Int |  (optional) (default to 20)

// Get the latest messages for all phones
PhoneControllerAPI.getAllPhoneMessageThreads(page: page, size: size).then {
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
 **page** | **Int** |  | [optional] [default to 0]
 **size** | **Int** |  | [optional] [default to 20]

### Return type

[**PagePhoneMessageThreadProjection**](PagePhoneMessageThreadProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConsentStatus**
```swift
    open class func getConsentStatus() -> Promise<ConsentStatusDto>
```

Get consent status

Get the status of phone usage consent

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Get consent status
PhoneControllerAPI.getConsentStatus().then {
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

[**ConsentStatusDto**](ConsentStatusDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmergencyAddress**
```swift
    open class func getEmergencyAddress( addressId: UUID) -> Promise<EmergencyAddress>
```

Get an emergency address

Fetch an emergency address by ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let addressId = 987 // UUID | 

// Get an emergency address
PhoneControllerAPI.getEmergencyAddress(addressId: addressId).then {
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
 **addressId** | **UUID** |  | 

### Return type

[**EmergencyAddress**](EmergencyAddress)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmergencyAddresses**
```swift
    open class func getEmergencyAddresses() -> Promise<[EmergencyAddressDto]>
```

Get emergency addresses

List emergency addresses

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Get emergency addresses
PhoneControllerAPI.getEmergencyAddresses().then {
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

[**[EmergencyAddressDto]**](EmergencyAddressDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhoneMessageThreadItems**
```swift
    open class func getPhoneMessageThreadItems( phoneNumberId: UUID,  otherNumber: String,  page: Int? = nil,  size: Int? = nil) -> Promise<PagePhoneMessageThreadItemProjection>
```

Get messages in a phone thread

List message thread messages for a phone message thread

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let phoneNumberId = 987 // UUID | 
let otherNumber = "otherNumber_example" // String | 
let page = 987 // Int |  (optional) (default to 0)
let size = 987 // Int |  (optional) (default to 20)

// Get messages in a phone thread
PhoneControllerAPI.getPhoneMessageThreadItems(phoneNumberId: phoneNumberId, otherNumber: otherNumber, page: page, size: size).then {
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
 **phoneNumberId** | **UUID** |  | 
 **otherNumber** | **String** |  | 
 **page** | **Int** |  | [optional] [default to 0]
 **size** | **Int** |  | [optional] [default to 20]

### Return type

[**PagePhoneMessageThreadItemProjection**](PagePhoneMessageThreadItemProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhoneMessageThreads**
```swift
    open class func getPhoneMessageThreads( phoneNumberId: UUID,  page: Int? = nil,  size: Int? = nil) -> Promise<PagePhoneMessageThreadProjection>
```

Get the latest message preview for a thread

List message threads for a phone

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let phoneNumberId = 987 // UUID | 
let page = 987 // Int |  (optional) (default to 0)
let size = 987 // Int |  (optional) (default to 20)

// Get the latest message preview for a thread
PhoneControllerAPI.getPhoneMessageThreads(phoneNumberId: phoneNumberId, page: page, size: size).then {
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
 **phoneNumberId** | **UUID** |  | 
 **page** | **Int** |  | [optional] [default to 0]
 **size** | **Int** |  | [optional] [default to 20]

### Return type

[**PagePhoneMessageThreadProjection**](PagePhoneMessageThreadProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhoneNumber**
```swift
    open class func getPhoneNumber( phoneNumberId: UUID) -> Promise<PhoneNumberDto>
```

Get a phone number by ID

Get a phone number by ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let phoneNumberId = 987 // UUID | 

// Get a phone number by ID
PhoneControllerAPI.getPhoneNumber(phoneNumberId: phoneNumberId).then {
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
 **phoneNumberId** | **UUID** |  | 

### Return type

[**PhoneNumberDto**](PhoneNumberDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhoneNumberByName**
```swift
    open class func getPhoneNumberByName( name: String) -> Promise<PhoneNumberDto>
```

Get a phone number by name

Get a phone number by name

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let name = "name_example" // String | 

// Get a phone number by name
PhoneControllerAPI.getPhoneNumberByName(name: name).then {
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

[**PhoneNumberDto**](PhoneNumberDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhoneNumberByPhoneNumber**
```swift
    open class func getPhoneNumberByPhoneNumber( phoneNumber: String) -> Promise<PhoneNumberDto>
```

Get a phone number by phone number

Get a phone number by phone number

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let phoneNumber = "phoneNumber_example" // String | 

// Get a phone number by phone number
PhoneControllerAPI.getPhoneNumberByPhoneNumber(phoneNumber: phoneNumber).then {
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
 **phoneNumber** | **String** |  | 

### Return type

[**PhoneNumberDto**](PhoneNumberDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhoneNumbers**
```swift
    open class func getPhoneNumbers( phoneCountry: PhoneCountry_getPhoneNumbers? = nil,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getPhoneNumbers? = nil,  since: Date? = nil,  before: Date? = nil,  search: String? = nil,  include: [UUID]? = nil,  favourite: Bool? = nil) -> Promise<PagePhoneNumberProjection>
```

Get phone numbers

List phone numbers for account

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let phoneCountry = "phoneCountry_example" // String | Optional phone country (optional)
let page = 987 // Int | Optional page index for list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size for list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)
let search = "search_example" // String | Optional search filter (optional)
let include = [123] // [UUID] | Optional phoneIds to include in result (optional)
let favourite = true // Bool | Optionally filter results for favourites only (optional) (default to false)

// Get phone numbers
PhoneControllerAPI.getPhoneNumbers(phoneCountry: phoneCountry, page: page, size: size, sort: sort, since: since, before: before, search: search, include: include, favourite: favourite).then {
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
 **phoneCountry** | **String** | Optional phone country | [optional] 
 **page** | **Int** | Optional page index for list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size for list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 
 **search** | **String** | Optional search filter | [optional] 
 **include** | [**[UUID]**](UUID) | Optional phoneIds to include in result | [optional] 
 **favourite** | **Bool** | Optionally filter results for favourites only | [optional] [default to false]

### Return type

[**PagePhoneNumberProjection**](PagePhoneNumberProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhonePlans**
```swift
    open class func getPhonePlans() -> Promise<[PhonePlanDto]>
```

Get phone plans

Get phone number plans

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Get phone plans
PhoneControllerAPI.getPhonePlans().then {
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

[**[PhonePlanDto]**](PhonePlanDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhonePlansAvailability**
```swift
    open class func getPhonePlansAvailability() -> Promise<PhonePlanAvailability>
```

Get phone plans availability

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Get phone plans availability
PhoneControllerAPI.getPhonePlansAvailability().then {
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

[**PhonePlanAvailability**](PhonePlanAvailability)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentSmsByPhoneNumber**
```swift
    open class func getSentSmsByPhoneNumber( phoneNumberId: UUID,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getSentSmsByPhoneNumber? = nil,  since: Date? = nil,  before: Date? = nil,  search: String? = nil) -> Promise<PageSentSmsProjection>
```

List sent TXT messages for a phone number

Get sent SMS messages for a phone number

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let phoneNumberId = 987 // UUID | 
let page = 987 // Int | Optional page index in SMS list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let since = Date() // Date | Optional filter SMSs received after given date time (optional)
let before = Date() // Date | Optional filter SMSs received before given date time (optional)
let search = "search_example" // String | Optional search filter (optional)

// List sent TXT messages for a phone number
PhoneControllerAPI.getSentSmsByPhoneNumber(phoneNumberId: phoneNumberId, page: page, size: size, sort: sort, since: since, before: before, search: search).then {
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
 **phoneNumberId** | **UUID** |  | 
 **page** | **Int** | Optional page index in SMS list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **since** | **Date** | Optional filter SMSs received after given date time | [optional] 
 **before** | **Date** | Optional filter SMSs received before given date time | [optional] 
 **search** | **String** | Optional search filter | [optional] 

### Return type

[**PageSentSmsProjection**](PageSentSmsProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSmsByPhoneNumber**
```swift
    open class func getSmsByPhoneNumber( phoneNumberId: UUID,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getSmsByPhoneNumber? = nil,  unreadOnly: Bool? = nil,  since: Date? = nil,  before: Date? = nil,  search: String? = nil,  favourite: Bool? = nil) -> Promise<PageSmsProjection>
```

List SMS messages for a phone number

Get SMS messages for a phone number

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let phoneNumberId = 987 // UUID | 
let page = 987 // Int | Optional page index in SMS list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let unreadOnly = true // Bool | Optional filter for unread SMS only. All SMS are considered unread until they are viewed in the dashboard or requested directly (optional) (default to false)
let since = Date() // Date | Optional filter SMSs received after given date time (optional)
let before = Date() // Date | Optional filter SMSs received before given date time (optional)
let search = "search_example" // String | Optional search filter (optional)
let favourite = true // Bool | Optionally filter results for favourites only (optional) (default to false)

// List SMS messages for a phone number
PhoneControllerAPI.getSmsByPhoneNumber(phoneNumberId: phoneNumberId, page: page, size: size, sort: sort, unreadOnly: unreadOnly, since: since, before: before, search: search, favourite: favourite).then {
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
 **phoneNumberId** | **UUID** |  | 
 **page** | **Int** | Optional page index in SMS list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **unreadOnly** | **Bool** | Optional filter for unread SMS only. All SMS are considered unread until they are viewed in the dashboard or requested directly | [optional] [default to false]
 **since** | **Date** | Optional filter SMSs received after given date time | [optional] 
 **before** | **Date** | Optional filter SMSs received before given date time | [optional] 
 **search** | **String** | Optional search filter | [optional] 
 **favourite** | **Bool** | Optionally filter results for favourites only | [optional] [default to false]

### Return type

[**PageSmsProjection**](PageSmsProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sendSmsFromPhoneNumber**
```swift
    open class func sendSmsFromPhoneNumber( phoneNumberId: UUID,  smsSendOptions: SmsSendOptions) -> Promise<SentSmsDto>
```

Send TXT message from a phone number

Send SMS from a phone number

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let phoneNumberId = 987 // UUID | 
let smsSendOptions = SmsSendOptions(to: "to_example", body: "body_example") // SmsSendOptions | 

// Send TXT message from a phone number
PhoneControllerAPI.sendSmsFromPhoneNumber(phoneNumberId: phoneNumberId, smsSendOptions: smsSendOptions).then {
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
 **phoneNumberId** | **UUID** |  | 
 **smsSendOptions** | [**SmsSendOptions**](SmsSendOptions) |  | 

### Return type

[**SentSmsDto**](SentSmsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **setConsentStatus**
```swift
    open class func setConsentStatus( agree: Bool) -> Promise<ConsentStatusDto>
```

Set consent status

Give or revoke consent for phone usage

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let agree = true // Bool | 

// Set consent status
PhoneControllerAPI.setConsentStatus(agree: agree).then {
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
 **agree** | **Bool** |  | 

### Return type

[**ConsentStatusDto**](ConsentStatusDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **setPhoneFavourited**
```swift
    open class func setPhoneFavourited( phoneNumberId: UUID,  setPhoneFavouritedOptions: SetPhoneFavouritedOptions) -> Promise<PhoneNumberDto>
```

Set phone favourited state

Set and return new favorite state for a phone

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let phoneNumberId = 987 // UUID | ID of phone to set favourite state
let setPhoneFavouritedOptions = SetPhoneFavouritedOptions(state: false) // SetPhoneFavouritedOptions | 

// Set phone favourited state
PhoneControllerAPI.setPhoneFavourited(phoneNumberId: phoneNumberId, setPhoneFavouritedOptions: setPhoneFavouritedOptions).then {
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
 **phoneNumberId** | **UUID** | ID of phone to set favourite state | 
 **setPhoneFavouritedOptions** | [**SetPhoneFavouritedOptions**](SetPhoneFavouritedOptions) |  | 

### Return type

[**PhoneNumberDto**](PhoneNumberDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testPhoneNumberSendSms**
```swift
    open class func testPhoneNumberSendSms( phoneNumberId: UUID,  testPhoneNumberOptions: TestPhoneNumberOptions,  xTestId: String? = nil) -> Promise<Void>
```

Test sending an SMS to a number

Test a phone number by sending an SMS to it

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let phoneNumberId = 987 // UUID | 
let testPhoneNumberOptions = TestPhoneNumberOptions(message: "message_example") // TestPhoneNumberOptions | 
let xTestId = "xTestId_example" // String |  (optional)

// Test sending an SMS to a number
PhoneControllerAPI.testPhoneNumberSendSms(phoneNumberId: phoneNumberId, testPhoneNumberOptions: testPhoneNumberOptions, xTestId: xTestId).then {
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
 **phoneNumberId** | **UUID** |  | 
 **testPhoneNumberOptions** | [**TestPhoneNumberOptions**](TestPhoneNumberOptions) |  | 
 **xTestId** | **String** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updatePhoneNumber**
```swift
    open class func updatePhoneNumber( phoneNumberId: UUID,  updatePhoneNumberOptions: UpdatePhoneNumberOptions) -> Promise<PhoneNumberDto>
```

Update a phone number

Set field for phone number

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let phoneNumberId = 987 // UUID | ID of phone to set favourite state
let updatePhoneNumberOptions = UpdatePhoneNumberOptions(name: "name_example", _description: "_description_example") // UpdatePhoneNumberOptions | 

// Update a phone number
PhoneControllerAPI.updatePhoneNumber(phoneNumberId: phoneNumberId, updatePhoneNumberOptions: updatePhoneNumberOptions).then {
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
 **phoneNumberId** | **UUID** | ID of phone to set favourite state | 
 **updatePhoneNumberOptions** | [**UpdatePhoneNumberOptions**](UpdatePhoneNumberOptions) |  | 

### Return type

[**PhoneNumberDto**](PhoneNumberDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **validatePhoneNumber**
```swift
    open class func validatePhoneNumber( validatePhoneNumberOptions: ValidatePhoneNumberOptions) -> Promise<PhoneNumberValidationDto>
```

Verify validity of a phone number

Validate a phone number

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let validatePhoneNumberOptions = ValidatePhoneNumberOptions(phoneNumber: "phoneNumber_example") // ValidatePhoneNumberOptions | 

// Verify validity of a phone number
PhoneControllerAPI.validatePhoneNumber(validatePhoneNumberOptions: validatePhoneNumberOptions).then {
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
 **validatePhoneNumberOptions** | [**ValidatePhoneNumberOptions**](ValidatePhoneNumberOptions) |  | 

### Return type

[**PhoneNumberValidationDto**](PhoneNumberValidationDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

