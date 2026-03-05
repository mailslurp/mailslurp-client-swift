# DeliverabilityTestDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **UUID** |  | 
**name** | **String** |  | [optional] 
**_description** | **String** |  | [optional] 
**scope** | **String** |  | 
**selector** | [**DeliverabilitySelectorOptions**](DeliverabilitySelectorOptions) |  | 
**selectedEntityCount** | **Int64** |  | 
**expectations** | [DeliverabilityExpectation] |  | 
**status** | **String** |  | 
**startAt** | **Date** |  | 
**startedAt** | **Date** |  | [optional] 
**completedAt** | **Date** |  | [optional] 
**maxDurationSeconds** | **Int64** |  | [optional] 
**successThresholdPercent** | **Double** |  | [optional] 
**thresholdStatus** | **String** |  | 
**thresholdMet** | **Bool** |  | [optional] 
**lastEvaluatedAt** | **Date** |  | [optional] 
**totalEntities** | **Int64** |  | 
**matchedEntities** | **Int64** |  | 
**unmatchedEntities** | **Int64** |  | 
**completionPercentage** | **Double** |  | 
**timedOut** | **Bool** |  | 
**failureReason** | **String** |  | [optional] 
**createdAt** | **Date** |  | 
**updatedAt** | **Date** |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


