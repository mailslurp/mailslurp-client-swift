# CreateDeliverabilitySimulationJobOptions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**senderInboxId** | **UUID** | Sender inbox ID for INBOX scope tests | [optional] 
**senderPhoneId** | **UUID** | Sender phone ID for PHONE scope tests | [optional] 
**email** | [**DeliverabilitySimulationEmailOptions**](DeliverabilitySimulationEmailOptions) |  | [optional] 
**sms** | [**DeliverabilitySimulationSmsOptions**](DeliverabilitySimulationSmsOptions) |  | [optional] 
**delayMs** | **Int64** | Delay between individual sends in milliseconds | [optional] 
**batchSize** | **Int** | Maximum sends processed per scheduler batch | [optional] 
**sendsPerTarget** | **Int64** | Optional fixed sends per target. If omitted this is derived from test expectations. | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


