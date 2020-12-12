# FormControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**submitForm**](FormControllerAPI.md#submitform) | **POST** /forms | Submit a form to be parsed and sent as an email to an address determined by the form fields


# **submitForm**
```swift
    open class func submitForm(emailAddress: String? = nil, redirectTo: String? = nil, spamCheck: String? = nil, subject: String? = nil, successMessage: String? = nil, to: String? = nil, otherParameters: String? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Submit a form to be parsed and sent as an email to an address determined by the form fields

This endpoint allows you to submit HTML forms and receive the field values and files via email.   #### Parameters The endpoint looks for special meta parameters in the form fields OR in the URL request parameters. The meta parameters can be used to specify the behaviour of the email.   You must provide at-least a `_to` email address to tell the endpoint where the form should be emailed. These can be submitted as hidden HTML input fields with the corresponding `name` attributes or as URL query parameters such as `?_to=test@example.com`  The endpoint takes all other form fields that are named and includes them in the message body of the email. Files are sent as attachments.  #### Submitting This endpoint accepts form submission via POST method. It accepts `application/x-www-form-urlencoded`, and `multipart/form-data` content-types.  #### HTML Example ```html <form    action=\"https://api.mailslurp.com/forms\"   method=\"post\" >   <input name=\"_to\" type=\"hidden\" value=\"test@example.com\"/>   <textarea name=\"feedback\"></textarea>   <button type=\"submit\">Submit</button> </form> ```  #### URL Example ```html <form    action=\"https://api.mailslurp.com/forms?_to=test@example.com\"   method=\"post\" >   <textarea name=\"feedback\"></textarea>   <button type=\"submit\">Submit</button> </form> ```    The email address is specified by a `_to` field OR is extracted from an email alias specified by a `_toAlias` field (see the alias controller for more information).  Endpoint accepts .  You can specify a content type in HTML forms using the `enctype` attribute, for instance: `<form enctype=\"multipart/form-data\">`.  

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailAddress = "emailAddress_example" // String | Email address of the submitting user. Include this if you wish to record the submitters email address and reply to it later. (optional)
let redirectTo = "redirectTo_example" // String | Optional URL to redirect form submitter to after submission. If not present user will see a success message. (optional)
let spamCheck = "spamCheck_example" // String | Optional but recommended field that catches spammers out. Include as a hidden form field but LEAVE EMPTY. Spam-bots will usually fill every field. If the _spamCheck field is filled the form submission will be ignored. (optional)
let subject = "subject_example" // String | Optional subject of the email that will be sent. (optional)
let successMessage = "successMessage_example" // String | Optional success message to display if no _redirectTo present. (optional)
let to = "to_example" // String | The email address that submitted form should be sent to. (optional)
let otherParameters = "otherParameters_example" // String | All other parameters or fields will be accepted and attached to the sent email. This includes files and any HTML form field with a name. These fields will become the body of the email that is sent. (optional)

// Submit a form to be parsed and sent as an email to an address determined by the form fields
FormControllerAPI.submitForm(emailAddress: emailAddress, redirectTo: redirectTo, spamCheck: spamCheck, subject: subject, successMessage: successMessage, to: to, otherParameters: otherParameters) { (response, error) in
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
 **emailAddress** | **String** | Email address of the submitting user. Include this if you wish to record the submitters email address and reply to it later. | [optional] 
 **redirectTo** | **String** | Optional URL to redirect form submitter to after submission. If not present user will see a success message. | [optional] 
 **spamCheck** | **String** | Optional but recommended field that catches spammers out. Include as a hidden form field but LEAVE EMPTY. Spam-bots will usually fill every field. If the _spamCheck field is filled the form submission will be ignored. | [optional] 
 **subject** | **String** | Optional subject of the email that will be sent. | [optional] 
 **successMessage** | **String** | Optional success message to display if no _redirectTo present. | [optional] 
 **to** | **String** | The email address that submitted form should be sent to. | [optional] 
 **otherParameters** | **String** | All other parameters or fields will be accepted and attached to the sent email. This includes files and any HTML form field with a name. These fields will become the body of the email that is sent. | [optional] 

### Return type

**String**

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

