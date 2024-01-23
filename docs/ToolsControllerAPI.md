# ToolsControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**checkEmailFeaturesClientSupport**](ToolsControllerAPI#checkemailfeaturesclientsupport) | **POST** /tools/check-email-features-client-support | Check email client support for email HTML and CSS features
[**generateBimiRecord**](ToolsControllerAPI#generatebimirecord) | **POST** /tools/generate-bimi-record | Create a BIMI record policy
[**generateDmarcRecord**](ToolsControllerAPI#generatedmarcrecord) | **POST** /tools/generate-dmarc-record | Create a DMARC record policy
[**generateMtaStsRecord**](ToolsControllerAPI#generatemtastsrecord) | **POST** /tools/generate-mta-sts-record | Create a TLS reporting record policy
[**generateTlsReportingRecord**](ToolsControllerAPI#generatetlsreportingrecord) | **POST** /tools/generate-tls-reporting-record | Create a TLS reporting record policy
[**lookupBimiDomain**](ToolsControllerAPI#lookupbimidomain) | **POST** /tools/lookup-bimi-domain | Lookup a BIMI record policy
[**lookupDmarcDomain**](ToolsControllerAPI#lookupdmarcdomain) | **POST** /tools/lookup-dmarc-domain | Lookup a DMARC record policy
[**lookupMtaStsDomain**](ToolsControllerAPI#lookupmtastsdomain) | **POST** /tools/lookup-mta-sts-domain | Lookup a MTA-STS domain policy
[**lookupTlsReportingDomain**](ToolsControllerAPI#lookuptlsreportingdomain) | **POST** /tools/lookup-tls-reporting-domain | Lookup a TLS reporting domain policy


# **checkEmailFeaturesClientSupport**
```swift
    open class func checkEmailFeaturesClientSupport( checkEmailFeaturesClientSupportOptions: CheckEmailFeaturesClientSupportOptions) -> Promise<CheckEmailFeaturesClientSupportResults>
```

Check email client support for email HTML and CSS features

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let checkEmailFeaturesClientSupportOptions = CheckEmailFeaturesClientSupportOptions(emailBody: "emailBody_example") // CheckEmailFeaturesClientSupportOptions | 

// Check email client support for email HTML and CSS features
ToolsControllerAPI.checkEmailFeaturesClientSupport(checkEmailFeaturesClientSupportOptions: checkEmailFeaturesClientSupportOptions).then {
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
 **checkEmailFeaturesClientSupportOptions** | [**CheckEmailFeaturesClientSupportOptions**](CheckEmailFeaturesClientSupportOptions) |  | 

### Return type

[**CheckEmailFeaturesClientSupportResults**](CheckEmailFeaturesClientSupportResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **generateBimiRecord**
```swift
    open class func generateBimiRecord( generateBimiRecordOptions: GenerateBimiRecordOptions) -> Promise<GenerateBimiRecordResults>
```

Create a BIMI record policy

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let generateBimiRecordOptions = GenerateBimiRecordOptions(domain: "domain_example", version: "version_example", logoUrl: "logoUrl_example", vmcUrl: "vmcUrl_example") // GenerateBimiRecordOptions | 

// Create a BIMI record policy
ToolsControllerAPI.generateBimiRecord(generateBimiRecordOptions: generateBimiRecordOptions).then {
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
 **generateBimiRecordOptions** | [**GenerateBimiRecordOptions**](GenerateBimiRecordOptions) |  | 

### Return type

[**GenerateBimiRecordResults**](GenerateBimiRecordResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **generateDmarcRecord**
```swift
    open class func generateDmarcRecord( generateDmarcRecordOptions: GenerateDmarcRecordOptions) -> Promise<GenerateDmarcRecordResults>
```

Create a DMARC record policy

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let generateDmarcRecordOptions = GenerateDmarcRecordOptions(domain: "domain_example", version: "version_example", policy: "policy_example", subdomainPolicy: "subdomainPolicy_example", reportEmailAddress: ["reportEmailAddress_example"], forensicEmailAddress: ["forensicEmailAddress_example"], percentage: 123, reportFormat: "reportFormat_example", secondsBetweenReports: 123, adkim: "adkim_example", aspf: "aspf_example", fo: "fo_example") // GenerateDmarcRecordOptions | 

// Create a DMARC record policy
ToolsControllerAPI.generateDmarcRecord(generateDmarcRecordOptions: generateDmarcRecordOptions).then {
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
 **generateDmarcRecordOptions** | [**GenerateDmarcRecordOptions**](GenerateDmarcRecordOptions) |  | 

### Return type

[**GenerateDmarcRecordResults**](GenerateDmarcRecordResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **generateMtaStsRecord**
```swift
    open class func generateMtaStsRecord( generateMtaStsRecordOptions: GenerateMtaStsRecordOptions) -> Promise<GenerateMtaStsRecordResults>
```

Create a TLS reporting record policy

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let generateMtaStsRecordOptions = GenerateMtaStsRecordOptions(host: "host_example", version: "version_example", mode: "mode_example", ttl: 123, maxAgeSeconds: 123, mxRecords: ["mxRecords_example"]) // GenerateMtaStsRecordOptions | 

// Create a TLS reporting record policy
ToolsControllerAPI.generateMtaStsRecord(generateMtaStsRecordOptions: generateMtaStsRecordOptions).then {
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
 **generateMtaStsRecordOptions** | [**GenerateMtaStsRecordOptions**](GenerateMtaStsRecordOptions) |  | 

### Return type

[**GenerateMtaStsRecordResults**](GenerateMtaStsRecordResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **generateTlsReportingRecord**
```swift
    open class func generateTlsReportingRecord( generateTlsReportingRecordOptions: GenerateTlsReportingRecordOptions) -> Promise<GenerateTlsReportingRecordResults>
```

Create a TLS reporting record policy

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let generateTlsReportingRecordOptions = GenerateTlsReportingRecordOptions(reportingAddresses: ["reportingAddresses_example"], reportingUrl: "reportingUrl_example", host: "host_example", version: "version_example", ttl: 123) // GenerateTlsReportingRecordOptions | 

// Create a TLS reporting record policy
ToolsControllerAPI.generateTlsReportingRecord(generateTlsReportingRecordOptions: generateTlsReportingRecordOptions).then {
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
 **generateTlsReportingRecordOptions** | [**GenerateTlsReportingRecordOptions**](GenerateTlsReportingRecordOptions) |  | 

### Return type

[**GenerateTlsReportingRecordResults**](GenerateTlsReportingRecordResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **lookupBimiDomain**
```swift
    open class func lookupBimiDomain( lookupBimiDomainOptions: LookupBimiDomainOptions) -> Promise<LookupBimiDomainResults>
```

Lookup a BIMI record policy

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let lookupBimiDomainOptions = LookupBimiDomainOptions(host: "host_example") // LookupBimiDomainOptions | 

// Lookup a BIMI record policy
ToolsControllerAPI.lookupBimiDomain(lookupBimiDomainOptions: lookupBimiDomainOptions).then {
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
 **lookupBimiDomainOptions** | [**LookupBimiDomainOptions**](LookupBimiDomainOptions) |  | 

### Return type

[**LookupBimiDomainResults**](LookupBimiDomainResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **lookupDmarcDomain**
```swift
    open class func lookupDmarcDomain( lookupDmarcDomainOptions: LookupDmarcDomainOptions) -> Promise<LookupDmarcDomainResults>
```

Lookup a DMARC record policy

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let lookupDmarcDomainOptions = LookupDmarcDomainOptions(host: "host_example") // LookupDmarcDomainOptions | 

// Lookup a DMARC record policy
ToolsControllerAPI.lookupDmarcDomain(lookupDmarcDomainOptions: lookupDmarcDomainOptions).then {
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
 **lookupDmarcDomainOptions** | [**LookupDmarcDomainOptions**](LookupDmarcDomainOptions) |  | 

### Return type

[**LookupDmarcDomainResults**](LookupDmarcDomainResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **lookupMtaStsDomain**
```swift
    open class func lookupMtaStsDomain( lookupMtaStsDomainOptions: LookupMtaStsDomainOptions) -> Promise<LookupMtaStsDomainResults>
```

Lookup a MTA-STS domain policy

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let lookupMtaStsDomainOptions = LookupMtaStsDomainOptions(host: "host_example") // LookupMtaStsDomainOptions | 

// Lookup a MTA-STS domain policy
ToolsControllerAPI.lookupMtaStsDomain(lookupMtaStsDomainOptions: lookupMtaStsDomainOptions).then {
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
 **lookupMtaStsDomainOptions** | [**LookupMtaStsDomainOptions**](LookupMtaStsDomainOptions) |  | 

### Return type

[**LookupMtaStsDomainResults**](LookupMtaStsDomainResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **lookupTlsReportingDomain**
```swift
    open class func lookupTlsReportingDomain( lookupTlsReportingDomainOptions: LookupTlsReportingDomainOptions) -> Promise<LookupTlsReportingDomainResults>
```

Lookup a TLS reporting domain policy

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let lookupTlsReportingDomainOptions = LookupTlsReportingDomainOptions(host: "host_example") // LookupTlsReportingDomainOptions | 

// Lookup a TLS reporting domain policy
ToolsControllerAPI.lookupTlsReportingDomain(lookupTlsReportingDomainOptions: lookupTlsReportingDomainOptions).then {
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
 **lookupTlsReportingDomainOptions** | [**LookupTlsReportingDomainOptions**](LookupTlsReportingDomainOptions) |  | 

### Return type

[**LookupTlsReportingDomainResults**](LookupTlsReportingDomainResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

