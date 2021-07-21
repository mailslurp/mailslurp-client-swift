# MailServerControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**describeMailServerDomain**](MailServerControllerAPI#describemailserverdomain) | **POST** /mail-server/describe/domain | Get DNS Mail Server records for a domain
[**getDnsLookup**](MailServerControllerAPI#getdnslookup) | **POST** /mail-server/describe/dns-lookup | Lookup DNS records for a domain
[**getIpAddress**](MailServerControllerAPI#getipaddress) | **POST** /mail-server/describe/ip-address | Get IP address for a domain
[**verifyEmailAddress**](MailServerControllerAPI#verifyemailaddress) | **POST** /mail-server/verify/email-address | Verify the existence of an email address at a given mail server.


# **describeMailServerDomain**
```swift
    open class func describeMailServerDomain( describeOptions: DescribeDomainOptions) -> Promise<DescribeMailServerDomainResult>
```

Get DNS Mail Server records for a domain

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let describeOptions = DescribeDomainOptions(domain: "domain_example") // DescribeDomainOptions | describeOptions

// Get DNS Mail Server records for a domain
MailServerControllerAPI.describeMailServerDomain(describeOptions: describeOptions).then {
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
 **describeOptions** | [**DescribeDomainOptions**](DescribeDomainOptions) | describeOptions | 

### Return type

[**DescribeMailServerDomainResult**](DescribeMailServerDomainResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDnsLookup**
```swift
    open class func getDnsLookup( dnsLookupOptions: DNSLookupOptions) -> Promise<DNSLookupResults>
```

Lookup DNS records for a domain

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let dnsLookupOptions = DNSLookupOptions(hostname: "hostname_example", omitFinalDNSDot: false, recordTypes: ["recordTypes_example"]) // DNSLookupOptions | dnsLookupOptions

// Lookup DNS records for a domain
MailServerControllerAPI.getDnsLookup(dnsLookupOptions: dnsLookupOptions).then {
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
 **dnsLookupOptions** | [**DNSLookupOptions**](DNSLookupOptions) | dnsLookupOptions | 

### Return type

[**DNSLookupResults**](DNSLookupResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getIpAddress**
```swift
    open class func getIpAddress( name: String) -> Promise<IPAddressResult>
```

Get IP address for a domain

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let name = "name_example" // String | name

// Get IP address for a domain
MailServerControllerAPI.getIpAddress(name: name).then {
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
 **name** | **String** | name | 

### Return type

[**IPAddressResult**](IPAddressResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **verifyEmailAddress**
```swift
    open class func verifyEmailAddress( verifyOptions: VerifyEmailAddressOptions) -> Promise<EmailVerificationResult>
```

Verify the existence of an email address at a given mail server.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let verifyOptions = VerifyEmailAddressOptions(mailServerDomain: "mailServerDomain_example", emailAddress: "emailAddress_example", senderEmailAddress: "senderEmailAddress_example", port: 123) // VerifyEmailAddressOptions | verifyOptions

// Verify the existence of an email address at a given mail server.
MailServerControllerAPI.verifyEmailAddress(verifyOptions: verifyOptions).then {
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
 **verifyOptions** | [**VerifyEmailAddressOptions**](VerifyEmailAddressOptions) | verifyOptions | 

### Return type

[**EmailVerificationResult**](EmailVerificationResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

