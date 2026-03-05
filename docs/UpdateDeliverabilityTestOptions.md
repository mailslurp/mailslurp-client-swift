# UpdateDeliverabilityTestOptions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Optional updated name | [optional] 
**_description** | **String** | Optional updated description | [optional] 
**startAt** | **Date** | Optional updated receive-window start time. Only applied while test is not terminal. | [optional] 
**maxDurationSeconds** | **Int64** | Optional updated timeout in seconds | [optional] 
**clearMaxDuration** | **Bool** | Set true to clear timeout. If true, maxDurationSeconds is ignored for this request. | [optional] 
**successThresholdPercent** | **Double** | Optional updated acceptable success threshold percentage (0,100]. | [optional] 
**clearSuccessThreshold** | **Bool** | Set true to clear success threshold. If true, successThresholdPercent is ignored for this request. | [optional] 
**expectations** | [DeliverabilityExpectation] | Optional replacement expectations | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


