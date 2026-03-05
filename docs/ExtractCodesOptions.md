# ExtractCodesOptions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**method** | **String** | Extraction strategy for verification codes. Unsupported strategies may fall back when allowFallback is true. | [optional] 
**allowFallback** | **Bool** | Allow fallback to deterministic pattern extraction when the selected method is unavailable. | [optional] [default to true]
**minLength** | **Int** | Minimum code length to consider. Typical OTP values are between 4 and 8 characters. | [optional] [default to 4]
**maxLength** | **Int** | Maximum code length to consider. | [optional] [default to 10]
**maxCandidates** | **Int** | Maximum number of code candidates to return. Best candidate is also returned separately. | [optional] [default to 5]
**customPatterns** | **[String]** | Optional custom regex patterns for code extraction. Each pattern should have either one capture group for the code or match the full code directly. | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


