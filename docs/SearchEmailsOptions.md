# SearchEmailsOptions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**inboxIds** | **[UUID]** | Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. | [optional] 
**pageIndex** | **Int** | Optional page index in email list pagination | [optional] 
**pageSize** | **Int** | Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] 
**sortDirection** | **String** | Optional createdAt sort direction ASC or DESC | [optional] 
**unreadOnly** | **Bool** | Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly | [optional] 
**searchFilter** | **String** | Optional search filter. Searches email recipients, sender, subject, email address and ID. Does not search email body | [optional] 
**since** | **Date** | Optional filter emails received after given date time | [optional] 
**before** | **Date** | Optional filter emails received before given date time | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


