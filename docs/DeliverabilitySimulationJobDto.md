# DeliverabilitySimulationJobDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **UUID** |  | 
**testId** | **UUID** |  | 
**scope** | **String** |  | 
**status** | **String** |  | 
**createdAt** | **Date** |  | 
**updatedAt** | **Date** |  | 
**startedAt** | **Date** |  | [optional] 
**completedAt** | **Date** |  | [optional] 
**totalTargets** | **Int64** |  | 
**totalPlannedSends** | **Int64** |  | 
**nextSendIndex** | **Int64** |  | 
**sentCount** | **Int64** |  | 
**successCount** | **Int64** |  | 
**failureCount** | **Int64** |  | 
**progressPercent** | **Double** |  | 
**activeTargetLabel** | **String** |  | [optional] 
**estimatedRemainingMs** | **Int64** |  | [optional] 
**configSnapshot** | [**DeliverabilitySimulationJobConfigDto**](DeliverabilitySimulationJobConfigDto) |  | 
**errorSummary** | [**DeliverabilitySimulationJobErrorSummaryDto**](DeliverabilitySimulationJobErrorSummaryDto) |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


