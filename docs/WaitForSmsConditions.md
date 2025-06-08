# WaitForSmsConditions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**phoneNumberId** | **UUID** | ID of phone number to search within and apply conditions to. Essentially filtering the SMS found to give a count. | 
**limit** | **Int** | Limit results | [optional] 
**count** | **Int64** | Number of results that should match conditions. Either exactly or at least this amount based on the &#x60;countType&#x60;. If count condition is not met and the timeout has not been reached the &#x60;waitFor&#x60; method will retry the operation. | 
**delayTimeout** | **Int64** | Max time in milliseconds to wait between retries if a &#x60;timeout&#x60; is specified. | [optional] 
**timeout** | **Int64** | Max time in milliseconds to retry the &#x60;waitFor&#x60; operation until conditions are met. | 
**unreadOnly** | **Bool** | Apply conditions only to **unread** SMS. All SMS messages begin with &#x60;read&#x3D;false&#x60;. An SMS is marked &#x60;read&#x3D;true&#x60; when an &#x60;SMS&#x60; has been returned to the user at least once. For example you have called &#x60;getSms&#x60;, or you have viewed the SMS in the dashboard. | [optional] 
**countType** | **String** | How result size should be compared with the expected size. Exactly or at-least matching result? | [optional] 
**matches** | [SmsMatchOption] | Conditions that should be matched for an SMS to qualify for results. Each condition will be applied in order to each SMS within a phone number to filter a result list of matching SMSs you are waiting for. | [optional] 
**sortDirection** | **String** | Direction to sort matching SMSs by created time | [optional] 
**since** | **Date** | ISO Date Time earliest time of SMS to consider. Filter for matching SMSs that were received after this date | [optional] 
**before** | **Date** | ISO Date Time latest time of SMS to consider. Filter for matching SMSs that were received before this date | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


