# ExtractCodesResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**found** | **Bool** | True if at least one code candidate was found | 
**code** | **String** | Best candidate code when found | [optional] 
**methodUsed** | **String** | Extraction strategy for verification codes. Unsupported strategies may fall back when allowFallback is true. | [optional] 
**candidates** | [CodeCandidate] | Ranked code candidates | 
**warnings** | **[String]** | Warnings or fallback notes explaining extraction behavior for debugging and QA. | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


