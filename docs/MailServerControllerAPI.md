# MailServerControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**describeMailServerDomain**](MailServerControllerAPI#describemailserverdomain) | **POST** /mail-server/describe/domain | Get DNS Mail Server records for a domain
[**getDnsLookup**](MailServerControllerAPI#getdnslookup) | **POST** /mail-server/describe/dns-lookup | Lookup DNS records for a domain
[**getIpAddress**](MailServerControllerAPI#getipaddress) | **POST** /mail-server/describe/ip-address | Get IP address for a domain
[**verifyEmailAddress**](MailServerControllerAPI#verifyemailaddress) | **POST** /mail-server/verify/email-address | Deprecated. Use the EmailVerificationController methods for more accurate and reliable functionality. Verify the existence of an email address at a given mail server.


# **describeMailServerDomain**
```swift
    open class func describeMailServerDomain(describeDomainOptions: DescribeDomainOptions, completion: @escaping (_ data: DescribeMailServerDomainResult?, _ error: Error?) -> Void)
```

Get DNS Mail Server records for a domain

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let describeDomainOptions = DescribeDomainOptions(domain: "domain_example") // DescribeDomainOptions | 

// Get DNS Mail Server records for a domain
MailServerControllerAPI.describeMailServerDomain(describeDomainOptions: describeDomainOptions) { (response, error) in
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
 **describeDomainOptions** | [**DescribeDomainOptions**](DescribeDomainOptions) |  | 

### Return type

[**DescribeMailServerDomainResult**](DescribeMailServerDomainResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDnsLookup**
```swift
    open class func getDnsLookup(dNSLookupOptions: DNSLookupOptions, completion: @escaping (_ data: DNSLookupResults?, _ error: Error?) -> Void)
```

Lookup DNS records for a domain

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let dNSLookupOptions = DNSLookupOptions(hostname: "hostname_example", recordTypes: ["recordTypes_example"], omitFinalDNSDot: false) // DNSLookupOptions | 

// Lookup DNS records for a domain
MailServerControllerAPI.getDnsLookup(dNSLookupOptions: dNSLookupOptions) { (response, error) in
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
 **dNSLookupOptions** | [**DNSLookupOptions**](DNSLookupOptions) |  | 

### Return type

[**DNSLookupResults**](DNSLookupResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getIpAddress**
```swift
    open class func getIpAddress(name: String, completion: @escaping (_ data: IPAddressResult?, _ error: Error?) -> Void)
```

Get IP address for a domain

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let name = "name_example" // String | 

// Get IP address for a domain
MailServerControllerAPI.getIpAddress(name: name) { (response, error) in
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
 **name** | **String** |  | 

### Return type

[**IPAddressResult**](IPAddressResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **verifyEmailAddress**
```swift
    open class func verifyEmailAddress(verifyEmailAddressOptions: VerifyEmailAddressOptions, completion: @escaping (_ data: EmailVerificationResult?, _ error: Error?) -> Void)
```

Deprecated. Use the EmailVerificationController methods for more accurate and reliable functionality. Verify the existence of an email address at a given mail server.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let verifyEmailAddressOptions = VerifyEmailAddressOptions(mailServerDomain: "mailServerDomain_example", emailAddress: "emailAddress_example", senderEmailAddress: "senderEmailAddress_example", port: 123) // VerifyEmailAddressOptions | 

// Deprecated. Use the EmailVerificationController methods for more accurate and reliable functionality. Verify the existence of an email address at a given mail server.
MailServerControllerAPI.verifyEmailAddress(verifyEmailAddressOptions: verifyEmailAddressOptions) { (response, error) in
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
 **verifyEmailAddressOptions** | [**VerifyEmailAddressOptions**](VerifyEmailAddressOptions) |  | 

### Return type

[**EmailVerificationResult**](EmailVerificationResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

