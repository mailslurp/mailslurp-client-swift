# MailServerControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**describeMailServerDomain**](MailServerControllerAPI.md#describemailserverdomain) | **POST** /mail-server/describe/domain | Get DNS Mail Server records for a domain
[**getDnsLookup**](MailServerControllerAPI.md#getdnslookup) | **POST** /mail-server/describe/dns-lookup | Lookup DNS records for a domain
[**getIpAddress**](MailServerControllerAPI.md#getipaddress) | **POST** /mail-server/describe/ip-address | Get IP address for a domain
[**verifyEmailAddress**](MailServerControllerAPI.md#verifyemailaddress) | **POST** /mail-server/verify/email-address | Verify the existence of an email address at a given mail server.


# **describeMailServerDomain**
```swift
    open class func describeMailServerDomain(describeOptions: DescribeDomainOptions, completion: @escaping (_ data: DescribeMailServerDomainResult?, _ error: Error?) -> Void)
```

Get DNS Mail Server records for a domain

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let describeOptions = DescribeDomainOptions(domain: "domain_example") // DescribeDomainOptions | describeOptions

// Get DNS Mail Server records for a domain
MailServerControllerAPI.describeMailServerDomain(describeOptions: describeOptions) { (response, error) in
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
 **describeOptions** | [**DescribeDomainOptions**](DescribeDomainOptions.md) | describeOptions | 

### Return type

[**DescribeMailServerDomainResult**](DescribeMailServerDomainResult.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDnsLookup**
```swift
    open class func getDnsLookup(dnsLookupOptions: DNSLookupOptions, completion: @escaping (_ data: DNSLookupResults?, _ error: Error?) -> Void)
```

Lookup DNS records for a domain

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let dnsLookupOptions = DNSLookupOptions(hostname: "hostname_example", omitFinalDNSDot: false, recordTypes: ["recordTypes_example"]) // DNSLookupOptions | dnsLookupOptions

// Lookup DNS records for a domain
MailServerControllerAPI.getDnsLookup(dnsLookupOptions: dnsLookupOptions) { (response, error) in
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
 **dnsLookupOptions** | [**DNSLookupOptions**](DNSLookupOptions.md) | dnsLookupOptions | 

### Return type

[**DNSLookupResults**](DNSLookupResults.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIpAddress**
```swift
    open class func getIpAddress(name: String, completion: @escaping (_ data: IPAddressResult?, _ error: Error?) -> Void)
```

Get IP address for a domain

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let name = "name_example" // String | name

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
 **name** | **String** | name | 

### Return type

[**IPAddressResult**](IPAddressResult.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyEmailAddress**
```swift
    open class func verifyEmailAddress(verifyOptions: VerifyEmailAddressOptions, completion: @escaping (_ data: EmailVerificationResult?, _ error: Error?) -> Void)
```

Verify the existence of an email address at a given mail server.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let verifyOptions = VerifyEmailAddressOptions(mailServerDomain: "mailServerDomain_example", emailAddress: "emailAddress_example", senderEmailAddress: "senderEmailAddress_example", port: 123) // VerifyEmailAddressOptions | verifyOptions

// Verify the existence of an email address at a given mail server.
MailServerControllerAPI.verifyEmailAddress(verifyOptions: verifyOptions) { (response, error) in
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
 **verifyOptions** | [**VerifyEmailAddressOptions**](VerifyEmailAddressOptions.md) | verifyOptions | 

### Return type

[**EmailVerificationResult**](EmailVerificationResult.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

