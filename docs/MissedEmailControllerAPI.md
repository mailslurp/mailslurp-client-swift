# MissedEmailControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllMissedEmails**](MissedEmailControllerAPI#getallmissedemails) | **GET** /missed-emails | Get all MissedEmails in paginated format
[**getMissedEmail**](MissedEmailControllerAPI#getmissedemail) | **GET** /missed-emails/{MissedEmailId} | Get MissedEmail


# **getAllMissedEmails**
```swift
    open class func getAllMissedEmails(page: Int? = nil, size: Int? = nil, sort: Sort_getAllMissedEmails? = nil, completion: @escaping (_ data: PageMissedEmailProjection?, _ error: Error?) -> Void)
```

Get all MissedEmails in paginated format

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int | Optional page index in inbox list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in inbox list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)

// Get all MissedEmails in paginated format
MissedEmailControllerAPI.getAllMissedEmails(page: page, size: size, sort: sort) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int** | Optional page index in inbox list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in inbox list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]

### Return type

[**PageMissedEmailProjection**](PageMissedEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getMissedEmail**
```swift
    open class func getMissedEmail(missedEmailId: UUID, completion: @escaping (_ data: MissedEmail?, _ error: Error?) -> Void)
```

Get MissedEmail

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let missedEmailId = 987 // UUID | MissedEmailId

// Get MissedEmail
MissedEmailControllerAPI.getMissedEmail(missedEmailId: missedEmailId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **missedEmailId** | [**UUID**]() | MissedEmailId | 

### Return type

[**MissedEmail**](MissedEmail)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

