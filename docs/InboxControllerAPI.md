# InboxControllerAPI

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createInbox**](InboxControllerAPI#createinbox) | **POST** /inboxes | Create an inbox email address. An inbox has a real email address and can send and receive emails. Inboxes can be either &#x60;SMTP&#x60; or &#x60;HTTP&#x60; inboxes.
[**createInboxRuleset**](InboxControllerAPI#createinboxruleset) | **POST** /inboxes/{inboxId}/rulesets | Create an inbox ruleset
[**createInboxWithDefaults**](InboxControllerAPI#createinboxwithdefaults) | **POST** /inboxes/withDefaults | Create an inbox with default options. Uses MailSlurp domain pool address and is private.
[**createInboxWithOptions**](InboxControllerAPI#createinboxwithoptions) | **POST** /inboxes/withOptions | Create an inbox with options. Extended options for inbox creation.
[**deleteAllInboxes**](InboxControllerAPI#deleteallinboxes) | **DELETE** /inboxes | Delete all inboxes
[**deleteInbox**](InboxControllerAPI#deleteinbox) | **DELETE** /inboxes/{inboxId} | Delete inbox
[**doesInboxExist**](InboxControllerAPI#doesinboxexist) | **GET** /inboxes/exists | Does inbox exist
[**flushExpired**](InboxControllerAPI#flushexpired) | **DELETE** /inboxes/expired | Remove expired inboxes
[**getAllInboxes**](InboxControllerAPI#getallinboxes) | **GET** /inboxes/paginated | List All Inboxes Paginated
[**getEmails**](InboxControllerAPI#getemails) | **GET** /inboxes/{inboxId}/emails | Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead.
[**getInbox**](InboxControllerAPI#getinbox) | **GET** /inboxes/{inboxId} | Get Inbox. Returns properties of an inbox.
[**getInboxCount**](InboxControllerAPI#getinboxcount) | **GET** /inboxes/count | Get total inbox count
[**getInboxEmailCount**](InboxControllerAPI#getinboxemailcount) | **GET** /inboxes/{inboxId}/emails/count | Get email count in inbox
[**getInboxEmailsPaginated**](InboxControllerAPI#getinboxemailspaginated) | **GET** /inboxes/{inboxId}/emails/paginated | Get inbox emails paginated
[**getInboxSentEmails**](InboxControllerAPI#getinboxsentemails) | **GET** /inboxes/{inboxId}/sent | Get Inbox Sent Emails
[**getInboxTags**](InboxControllerAPI#getinboxtags) | **GET** /inboxes/tags | Get inbox tags
[**getInboxes**](InboxControllerAPI#getinboxes) | **GET** /inboxes | List Inboxes and email addresses
[**getOrganizationInboxes**](InboxControllerAPI#getorganizationinboxes) | **GET** /inboxes/organization | List Organization Inboxes Paginated
[**listInboxRulesets**](InboxControllerAPI#listinboxrulesets) | **GET** /inboxes/{inboxId}/rulesets | List inbox rulesets
[**listInboxTrackingPixels**](InboxControllerAPI#listinboxtrackingpixels) | **GET** /inboxes/{inboxId}/tracking-pixels | List inbox tracking pixels
[**sendEmail**](InboxControllerAPI#sendemail) | **POST** /inboxes/{inboxId} | Send Email
[**sendEmailAndConfirm**](InboxControllerAPI#sendemailandconfirm) | **POST** /inboxes/{inboxId}/confirm | Send email and return sent confirmation
[**sendTestEmail**](InboxControllerAPI#sendtestemail) | **POST** /inboxes/{inboxId}/send-test-email | Send a test email to inbox
[**setInboxFavourited**](InboxControllerAPI#setinboxfavourited) | **PUT** /inboxes/{inboxId}/favourite | Set inbox favourited state
[**updateInbox**](InboxControllerAPI#updateinbox) | **PATCH** /inboxes/{inboxId} | Update Inbox. Change name and description. Email address is not editable.


# **createInbox**
```swift
    open class func createInbox( aCustomEmailAddressToUseWithTheInboxDefaultsToNullWhenNullMailSlurpWillAssignARandomEmailAddressToTheInboxSuchAs123mailslurpComIfYouUseTheUseDomainPoolOptionWhenTheEmailAddressIsNullItWillGenerateAnEmailAddressWithAMoreVariedDomainEndingSuchAs123mailslurpInfoOr123mailslurpBizWhenACustomEmailAddressIsProvidedTheAddressIsSplitIntoADomainAndTheDomainIsQueriedAgainstYourUserIfYouHaveCreatedTheDomainInTheMailSlurpDashboardAndVerifiedItYouCanUseAnyEmailAddressThatEndsWithTheDomainNoteDomainTypesMustMatchTheInboxTypeSoSMTPInboxesWillOnlyWorkWithSMTPTypeDomainsAvoidSMTPInboxesIfYouNeedToSendEmailsAsTheyCanOnlyReceiveSendAnEmailToThisAddressAndTheInboxWillReceiveAndStoreItForYouToRetrieveTheEmailUseTheInboxAndEmailControllerEndpointsWithTheInboxID: String? = nil,  tagsThatInboxHasBeenTaggedWithTagsCanBeAddedToInboxesToGroupDifferentInboxesWithinAnAccountYouCanAlsoSearchForInboxesByTagInTheDashboardUI: [String]? = nil,  optionalNameOfTheInboxDisplayedInTheDashboardForEasierSearchAndUsedAsTheSenderNameWhenSendingEmails: String? = nil,  optionalDescriptionOfTheInboxForLabellingPurposesIsShownInTheDashboardAndCanBeUsedWith: String? = nil,  useTheMailSlurpDomainNamePoolWithThisInboxWhenCreatingTheEmailAddressDefaultsToNullIfEnabledTheInboxWillBeAnEmailAddressWithADomainRandomlyChosenFromAListOfTheMailSlurpDomainsThisIsUsefulWhenTheDefaultMailslurpComEmailAddressesUsedWithInboxesAreBlockedOrConsideredSpamByAProviderOrReceivingServiceWhenDomainPoolIsEnabledAnEmailAddressWillBeGeneratedEndingInMailslurpWorldinfoxyzThisMeansATLDIsRandomlySelectingFromAListOfBizInfoXyzEtcToAddVarianceToTheGeneratedEmailAddressesWhenNullOrFalseMailSlurpUsesTheDefaultBehaviorOfMailslurpComOrCustomEmailAddressProvidedByTheEmailAddressFieldNoteThisFeatureIsOnlyAvailableForHTTPInboxTypes: Bool? = nil,  isTheInboxAFavoriteMarkingAnInboxAsAFavoriteIsTypicallyDoneInTheDashboardForQuickAccessOrFiltering: Bool? = nil,  optionalInboxExpirationDateIfNullThenThisInboxIsPermanentAndTheEmailsInItWontBeDeletedIfAnExpirationDateIsProvidedOrIsRequiredByYourPlanTheInboxWillBeClosedWhenTheExpirationTimeIsReachedExpiredInboxesStillContainTheirEmailsButCanNoLongerSendOrReceiveEmailsAnExpiredInboxRecordIsCreatedWhenAnInboxAndTheEmailAddressAndInboxIDAreRecordedTheExpiresAtPropertyIsATimestampStringInISODateTimeFormatYyyyMMDdTHHmmssSSSXXX: Date? = nil,  numberOfMillisecondsThatInboxShouldExistFor: Int64? = nil,  dEPRECATEDTeamAccessIsAlwaysTrueGrantTeamAccessToThisInboxAndTheEmailsThatBelongToItForTeamMembersOfYourOrganization: Bool? = nil,  hTTPDefaultOrSMTPInboxTypeHTTPInboxesAreDefaultAndBestSolutionForMostCasesSMTPInboxesAreMoreReliableForPublicInboundEmailConsumptionButDoNotSupportSendingEmailsWhenUsingCustomDomainsTheDomainTypeMustMatchTheInboxTypeHTTPInboxesAreProcessedByAWSSESWhileSMTPInboxesUseACustomMailServerRunningAtMxMailslurpCom: HTTPDefaultOrSMTPInboxTypeHTTPInboxesAreDefaultAndBestSolutionForMostCasesSMTPInboxesAreMoreReliableForPublicInboundEmailConsumptionButDoNotSupportSendingEmailsWhenUsingCustomDomainsTheDomainTypeMustMatchTheInboxTypeHTTPInboxesAreProcessedByAWSSESWhileSMTPInboxesUseACustomMailServerRunningAtMxMailslurpCom_createInbox? = nil) -> Promise<InboxDto>
```

Create an inbox email address. An inbox has a real email address and can send and receive emails. Inboxes can be either `SMTP` or `HTTP` inboxes.

Create a new inbox and with a randomized email address to send and receive from. Pass emailAddress parameter if you wish to use a specific email address. Creating an inbox is required before sending or receiving emails. If writing tests it is recommended that you create a new inbox during each test method so that it is unique and empty. 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let aCustomEmailAddressToUseWithTheInboxDefaultsToNullWhenNullMailSlurpWillAssignARandomEmailAddressToTheInboxSuchAs123mailslurpComIfYouUseTheUseDomainPoolOptionWhenTheEmailAddressIsNullItWillGenerateAnEmailAddressWithAMoreVariedDomainEndingSuchAs123mailslurpInfoOr123mailslurpBizWhenACustomEmailAddressIsProvidedTheAddressIsSplitIntoADomainAndTheDomainIsQueriedAgainstYourUserIfYouHaveCreatedTheDomainInTheMailSlurpDashboardAndVerifiedItYouCanUseAnyEmailAddressThatEndsWithTheDomainNoteDomainTypesMustMatchTheInboxTypeSoSMTPInboxesWillOnlyWorkWithSMTPTypeDomainsAvoidSMTPInboxesIfYouNeedToSendEmailsAsTheyCanOnlyReceiveSendAnEmailToThisAddressAndTheInboxWillReceiveAndStoreItForYouToRetrieveTheEmailUseTheInboxAndEmailControllerEndpointsWithTheInboxID = "aCustomEmailAddressToUseWithTheInboxDefaultsToNullWhenNullMailSlurpWillAssignARandomEmailAddressToTheInboxSuchAs123mailslurpComIfYouUseTheUseDomainPoolOptionWhenTheEmailAddressIsNullItWillGenerateAnEmailAddressWithAMoreVariedDomainEndingSuchAs123mailslurpInfoOr123mailslurpBizWhenACustomEmailAddressIsProvidedTheAddressIsSplitIntoADomainAndTheDomainIsQueriedAgainstYourUserIfYouHaveCreatedTheDomainInTheMailSlurpDashboardAndVerifiedItYouCanUseAnyEmailAddressThatEndsWithTheDomainNoteDomainTypesMustMatchTheInboxTypeSoSMTPInboxesWillOnlyWorkWithSMTPTypeDomainsAvoidSMTPInboxesIfYouNeedToSendEmailsAsTheyCanOnlyReceiveSendAnEmailToThisAddressAndTheInboxWillReceiveAndStoreItForYouToRetrieveTheEmailUseTheInboxAndEmailControllerEndpointsWithTheInboxID_example" // String |  (optional)
let tagsThatInboxHasBeenTaggedWithTagsCanBeAddedToInboxesToGroupDifferentInboxesWithinAnAccountYouCanAlsoSearchForInboxesByTagInTheDashboardUI = ["inner_example"] // [String] |  (optional)
let optionalNameOfTheInboxDisplayedInTheDashboardForEasierSearchAndUsedAsTheSenderNameWhenSendingEmails = "optionalNameOfTheInboxDisplayedInTheDashboardForEasierSearchAndUsedAsTheSenderNameWhenSendingEmails_example" // String |  (optional)
let optionalDescriptionOfTheInboxForLabellingPurposesIsShownInTheDashboardAndCanBeUsedWith = "optionalDescriptionOfTheInboxForLabellingPurposesIsShownInTheDashboardAndCanBeUsedWith_example" // String |  (optional)
let useTheMailSlurpDomainNamePoolWithThisInboxWhenCreatingTheEmailAddressDefaultsToNullIfEnabledTheInboxWillBeAnEmailAddressWithADomainRandomlyChosenFromAListOfTheMailSlurpDomainsThisIsUsefulWhenTheDefaultMailslurpComEmailAddressesUsedWithInboxesAreBlockedOrConsideredSpamByAProviderOrReceivingServiceWhenDomainPoolIsEnabledAnEmailAddressWillBeGeneratedEndingInMailslurpWorldinfoxyzThisMeansATLDIsRandomlySelectingFromAListOfBizInfoXyzEtcToAddVarianceToTheGeneratedEmailAddressesWhenNullOrFalseMailSlurpUsesTheDefaultBehaviorOfMailslurpComOrCustomEmailAddressProvidedByTheEmailAddressFieldNoteThisFeatureIsOnlyAvailableForHTTPInboxTypes = true // Bool |  (optional)
let isTheInboxAFavoriteMarkingAnInboxAsAFavoriteIsTypicallyDoneInTheDashboardForQuickAccessOrFiltering = true // Bool |  (optional)
let optionalInboxExpirationDateIfNullThenThisInboxIsPermanentAndTheEmailsInItWontBeDeletedIfAnExpirationDateIsProvidedOrIsRequiredByYourPlanTheInboxWillBeClosedWhenTheExpirationTimeIsReachedExpiredInboxesStillContainTheirEmailsButCanNoLongerSendOrReceiveEmailsAnExpiredInboxRecordIsCreatedWhenAnInboxAndTheEmailAddressAndInboxIDAreRecordedTheExpiresAtPropertyIsATimestampStringInISODateTimeFormatYyyyMMDdTHHmmssSSSXXX = Date() // Date |  (optional)
let numberOfMillisecondsThatInboxShouldExistFor = 987 // Int64 |  (optional)
let dEPRECATEDTeamAccessIsAlwaysTrueGrantTeamAccessToThisInboxAndTheEmailsThatBelongToItForTeamMembersOfYourOrganization = true // Bool |  (optional)
let hTTPDefaultOrSMTPInboxTypeHTTPInboxesAreDefaultAndBestSolutionForMostCasesSMTPInboxesAreMoreReliableForPublicInboundEmailConsumptionButDoNotSupportSendingEmailsWhenUsingCustomDomainsTheDomainTypeMustMatchTheInboxTypeHTTPInboxesAreProcessedByAWSSESWhileSMTPInboxesUseACustomMailServerRunningAtMxMailslurpCom = "hTTPDefaultOrSMTPInboxTypeHTTPInboxesAreDefaultAndBestSolutionForMostCasesSMTPInboxesAreMoreReliableForPublicInboundEmailConsumptionButDoNotSupportSendingEmailsWhenUsingCustomDomainsTheDomainTypeMustMatchTheInboxTypeHTTPInboxesAreProcessedByAWSSESWhileSMTPInboxesUseACustomMailServerRunningAtMxMailslurpCom_example" // String |  (optional)

// Create an inbox email address. An inbox has a real email address and can send and receive emails. Inboxes can be either `SMTP` or `HTTP` inboxes.
InboxControllerAPI.createInbox(aCustomEmailAddressToUseWithTheInboxDefaultsToNullWhenNullMailSlurpWillAssignARandomEmailAddressToTheInboxSuchAs123mailslurpComIfYouUseTheUseDomainPoolOptionWhenTheEmailAddressIsNullItWillGenerateAnEmailAddressWithAMoreVariedDomainEndingSuchAs123mailslurpInfoOr123mailslurpBizWhenACustomEmailAddressIsProvidedTheAddressIsSplitIntoADomainAndTheDomainIsQueriedAgainstYourUserIfYouHaveCreatedTheDomainInTheMailSlurpDashboardAndVerifiedItYouCanUseAnyEmailAddressThatEndsWithTheDomainNoteDomainTypesMustMatchTheInboxTypeSoSMTPInboxesWillOnlyWorkWithSMTPTypeDomainsAvoidSMTPInboxesIfYouNeedToSendEmailsAsTheyCanOnlyReceiveSendAnEmailToThisAddressAndTheInboxWillReceiveAndStoreItForYouToRetrieveTheEmailUseTheInboxAndEmailControllerEndpointsWithTheInboxID: aCustomEmailAddressToUseWithTheInboxDefaultsToNullWhenNullMailSlurpWillAssignARandomEmailAddressToTheInboxSuchAs123mailslurpComIfYouUseTheUseDomainPoolOptionWhenTheEmailAddressIsNullItWillGenerateAnEmailAddressWithAMoreVariedDomainEndingSuchAs123mailslurpInfoOr123mailslurpBizWhenACustomEmailAddressIsProvidedTheAddressIsSplitIntoADomainAndTheDomainIsQueriedAgainstYourUserIfYouHaveCreatedTheDomainInTheMailSlurpDashboardAndVerifiedItYouCanUseAnyEmailAddressThatEndsWithTheDomainNoteDomainTypesMustMatchTheInboxTypeSoSMTPInboxesWillOnlyWorkWithSMTPTypeDomainsAvoidSMTPInboxesIfYouNeedToSendEmailsAsTheyCanOnlyReceiveSendAnEmailToThisAddressAndTheInboxWillReceiveAndStoreItForYouToRetrieveTheEmailUseTheInboxAndEmailControllerEndpointsWithTheInboxID, tagsThatInboxHasBeenTaggedWithTagsCanBeAddedToInboxesToGroupDifferentInboxesWithinAnAccountYouCanAlsoSearchForInboxesByTagInTheDashboardUI: tagsThatInboxHasBeenTaggedWithTagsCanBeAddedToInboxesToGroupDifferentInboxesWithinAnAccountYouCanAlsoSearchForInboxesByTagInTheDashboardUI, optionalNameOfTheInboxDisplayedInTheDashboardForEasierSearchAndUsedAsTheSenderNameWhenSendingEmails: optionalNameOfTheInboxDisplayedInTheDashboardForEasierSearchAndUsedAsTheSenderNameWhenSendingEmails, optionalDescriptionOfTheInboxForLabellingPurposesIsShownInTheDashboardAndCanBeUsedWith: optionalDescriptionOfTheInboxForLabellingPurposesIsShownInTheDashboardAndCanBeUsedWith, useTheMailSlurpDomainNamePoolWithThisInboxWhenCreatingTheEmailAddressDefaultsToNullIfEnabledTheInboxWillBeAnEmailAddressWithADomainRandomlyChosenFromAListOfTheMailSlurpDomainsThisIsUsefulWhenTheDefaultMailslurpComEmailAddressesUsedWithInboxesAreBlockedOrConsideredSpamByAProviderOrReceivingServiceWhenDomainPoolIsEnabledAnEmailAddressWillBeGeneratedEndingInMailslurpWorldinfoxyzThisMeansATLDIsRandomlySelectingFromAListOfBizInfoXyzEtcToAddVarianceToTheGeneratedEmailAddressesWhenNullOrFalseMailSlurpUsesTheDefaultBehaviorOfMailslurpComOrCustomEmailAddressProvidedByTheEmailAddressFieldNoteThisFeatureIsOnlyAvailableForHTTPInboxTypes: useTheMailSlurpDomainNamePoolWithThisInboxWhenCreatingTheEmailAddressDefaultsToNullIfEnabledTheInboxWillBeAnEmailAddressWithADomainRandomlyChosenFromAListOfTheMailSlurpDomainsThisIsUsefulWhenTheDefaultMailslurpComEmailAddressesUsedWithInboxesAreBlockedOrConsideredSpamByAProviderOrReceivingServiceWhenDomainPoolIsEnabledAnEmailAddressWillBeGeneratedEndingInMailslurpWorldinfoxyzThisMeansATLDIsRandomlySelectingFromAListOfBizInfoXyzEtcToAddVarianceToTheGeneratedEmailAddressesWhenNullOrFalseMailSlurpUsesTheDefaultBehaviorOfMailslurpComOrCustomEmailAddressProvidedByTheEmailAddressFieldNoteThisFeatureIsOnlyAvailableForHTTPInboxTypes, isTheInboxAFavoriteMarkingAnInboxAsAFavoriteIsTypicallyDoneInTheDashboardForQuickAccessOrFiltering: isTheInboxAFavoriteMarkingAnInboxAsAFavoriteIsTypicallyDoneInTheDashboardForQuickAccessOrFiltering, optionalInboxExpirationDateIfNullThenThisInboxIsPermanentAndTheEmailsInItWontBeDeletedIfAnExpirationDateIsProvidedOrIsRequiredByYourPlanTheInboxWillBeClosedWhenTheExpirationTimeIsReachedExpiredInboxesStillContainTheirEmailsButCanNoLongerSendOrReceiveEmailsAnExpiredInboxRecordIsCreatedWhenAnInboxAndTheEmailAddressAndInboxIDAreRecordedTheExpiresAtPropertyIsATimestampStringInISODateTimeFormatYyyyMMDdTHHmmssSSSXXX: optionalInboxExpirationDateIfNullThenThisInboxIsPermanentAndTheEmailsInItWontBeDeletedIfAnExpirationDateIsProvidedOrIsRequiredByYourPlanTheInboxWillBeClosedWhenTheExpirationTimeIsReachedExpiredInboxesStillContainTheirEmailsButCanNoLongerSendOrReceiveEmailsAnExpiredInboxRecordIsCreatedWhenAnInboxAndTheEmailAddressAndInboxIDAreRecordedTheExpiresAtPropertyIsATimestampStringInISODateTimeFormatYyyyMMDdTHHmmssSSSXXX, numberOfMillisecondsThatInboxShouldExistFor: numberOfMillisecondsThatInboxShouldExistFor, dEPRECATEDTeamAccessIsAlwaysTrueGrantTeamAccessToThisInboxAndTheEmailsThatBelongToItForTeamMembersOfYourOrganization: dEPRECATEDTeamAccessIsAlwaysTrueGrantTeamAccessToThisInboxAndTheEmailsThatBelongToItForTeamMembersOfYourOrganization, hTTPDefaultOrSMTPInboxTypeHTTPInboxesAreDefaultAndBestSolutionForMostCasesSMTPInboxesAreMoreReliableForPublicInboundEmailConsumptionButDoNotSupportSendingEmailsWhenUsingCustomDomainsTheDomainTypeMustMatchTheInboxTypeHTTPInboxesAreProcessedByAWSSESWhileSMTPInboxesUseACustomMailServerRunningAtMxMailslurpCom: hTTPDefaultOrSMTPInboxTypeHTTPInboxesAreDefaultAndBestSolutionForMostCasesSMTPInboxesAreMoreReliableForPublicInboundEmailConsumptionButDoNotSupportSendingEmailsWhenUsingCustomDomainsTheDomainTypeMustMatchTheInboxTypeHTTPInboxesAreProcessedByAWSSESWhileSMTPInboxesUseACustomMailServerRunningAtMxMailslurpCom).then {
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
 **aCustomEmailAddressToUseWithTheInboxDefaultsToNullWhenNullMailSlurpWillAssignARandomEmailAddressToTheInboxSuchAs123mailslurpComIfYouUseTheUseDomainPoolOptionWhenTheEmailAddressIsNullItWillGenerateAnEmailAddressWithAMoreVariedDomainEndingSuchAs123mailslurpInfoOr123mailslurpBizWhenACustomEmailAddressIsProvidedTheAddressIsSplitIntoADomainAndTheDomainIsQueriedAgainstYourUserIfYouHaveCreatedTheDomainInTheMailSlurpDashboardAndVerifiedItYouCanUseAnyEmailAddressThatEndsWithTheDomainNoteDomainTypesMustMatchTheInboxTypeSoSMTPInboxesWillOnlyWorkWithSMTPTypeDomainsAvoidSMTPInboxesIfYouNeedToSendEmailsAsTheyCanOnlyReceiveSendAnEmailToThisAddressAndTheInboxWillReceiveAndStoreItForYouToRetrieveTheEmailUseTheInboxAndEmailControllerEndpointsWithTheInboxID** | **String** |  | [optional] 
 **tagsThatInboxHasBeenTaggedWithTagsCanBeAddedToInboxesToGroupDifferentInboxesWithinAnAccountYouCanAlsoSearchForInboxesByTagInTheDashboardUI** | [**[String]**](String) |  | [optional] 
 **optionalNameOfTheInboxDisplayedInTheDashboardForEasierSearchAndUsedAsTheSenderNameWhenSendingEmails** | **String** |  | [optional] 
 **optionalDescriptionOfTheInboxForLabellingPurposesIsShownInTheDashboardAndCanBeUsedWith** | **String** |  | [optional] 
 **useTheMailSlurpDomainNamePoolWithThisInboxWhenCreatingTheEmailAddressDefaultsToNullIfEnabledTheInboxWillBeAnEmailAddressWithADomainRandomlyChosenFromAListOfTheMailSlurpDomainsThisIsUsefulWhenTheDefaultMailslurpComEmailAddressesUsedWithInboxesAreBlockedOrConsideredSpamByAProviderOrReceivingServiceWhenDomainPoolIsEnabledAnEmailAddressWillBeGeneratedEndingInMailslurpWorldinfoxyzThisMeansATLDIsRandomlySelectingFromAListOfBizInfoXyzEtcToAddVarianceToTheGeneratedEmailAddressesWhenNullOrFalseMailSlurpUsesTheDefaultBehaviorOfMailslurpComOrCustomEmailAddressProvidedByTheEmailAddressFieldNoteThisFeatureIsOnlyAvailableForHTTPInboxTypes** | **Bool** |  | [optional] 
 **isTheInboxAFavoriteMarkingAnInboxAsAFavoriteIsTypicallyDoneInTheDashboardForQuickAccessOrFiltering** | **Bool** |  | [optional] 
 **optionalInboxExpirationDateIfNullThenThisInboxIsPermanentAndTheEmailsInItWontBeDeletedIfAnExpirationDateIsProvidedOrIsRequiredByYourPlanTheInboxWillBeClosedWhenTheExpirationTimeIsReachedExpiredInboxesStillContainTheirEmailsButCanNoLongerSendOrReceiveEmailsAnExpiredInboxRecordIsCreatedWhenAnInboxAndTheEmailAddressAndInboxIDAreRecordedTheExpiresAtPropertyIsATimestampStringInISODateTimeFormatYyyyMMDdTHHmmssSSSXXX** | **Date** |  | [optional] 
 **numberOfMillisecondsThatInboxShouldExistFor** | **Int64** |  | [optional] 
 **dEPRECATEDTeamAccessIsAlwaysTrueGrantTeamAccessToThisInboxAndTheEmailsThatBelongToItForTeamMembersOfYourOrganization** | **Bool** |  | [optional] 
 **hTTPDefaultOrSMTPInboxTypeHTTPInboxesAreDefaultAndBestSolutionForMostCasesSMTPInboxesAreMoreReliableForPublicInboundEmailConsumptionButDoNotSupportSendingEmailsWhenUsingCustomDomainsTheDomainTypeMustMatchTheInboxTypeHTTPInboxesAreProcessedByAWSSESWhileSMTPInboxesUseACustomMailServerRunningAtMxMailslurpCom** | **String** |  | [optional] 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createInboxRuleset**
```swift
    open class func createInboxRuleset( inboxId: UUID,  createInboxRulesetOptions: CreateInboxRulesetOptions) -> Promise<InboxRulesetDto>
```

Create an inbox ruleset

Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | 
let createInboxRulesetOptions = CreateInboxRulesetOptions(scope: "scope_example", action: "action_example", target: "target_example") // CreateInboxRulesetOptions | 

// Create an inbox ruleset
InboxControllerAPI.createInboxRuleset(inboxId: inboxId, createInboxRulesetOptions: createInboxRulesetOptions).then {
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
 **inboxId** | [**UUID**]() |  | 
 **createInboxRulesetOptions** | [**CreateInboxRulesetOptions**](CreateInboxRulesetOptions) |  | 

### Return type

[**InboxRulesetDto**](InboxRulesetDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createInboxWithDefaults**
```swift
    open class func createInboxWithDefaults() -> Promise<InboxDto>
```

Create an inbox with default options. Uses MailSlurp domain pool address and is private.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Create an inbox with default options. Uses MailSlurp domain pool address and is private.
InboxControllerAPI.createInboxWithDefaults().then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createInboxWithOptions**
```swift
    open class func createInboxWithOptions( createInboxDto: CreateInboxDto) -> Promise<InboxDto>
```

Create an inbox with options. Extended options for inbox creation.

Additional endpoint that allows inbox creation with request body options. Can be more flexible that other methods for some clients.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let createInboxDto = CreateInboxDto(emailAddress: "emailAddress_example", name: "name_example", _description: "_description_example", useDomainPool: false, tags: ["tags_example"], expiresAt: Date(), favourite: false, expiresIn: 123, allowTeamAccess: false, inboxType: "inboxType_example") // CreateInboxDto | 

// Create an inbox with options. Extended options for inbox creation.
InboxControllerAPI.createInboxWithOptions(createInboxDto: createInboxDto).then {
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
 **createInboxDto** | [**CreateInboxDto**](CreateInboxDto) |  | 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteAllInboxes**
```swift
    open class func deleteAllInboxes() -> Promise<Void>
```

Delete all inboxes

Permanently delete all inboxes and associated email addresses. This will also delete all emails within the inboxes. Be careful as inboxes cannot be recovered once deleted. Note: deleting inboxes will not impact your usage limits. Monthly inbox creation limits are based on how many inboxes were created in the last 30 days, not how many inboxes you currently have.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Delete all inboxes
InboxControllerAPI.deleteAllInboxes().then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteInbox**
```swift
    open class func deleteInbox( inboxId: UUID) -> Promise<Void>
```

Delete inbox

Permanently delete an inbox and associated email address as well as all emails within the given inbox. This action cannot be undone. Note: deleting an inbox will not affect your account usage. Monthly inbox usage is based on how many inboxes you create within 30 days, not how many exist at time of request.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | 

// Delete inbox
InboxControllerAPI.deleteInbox(inboxId: inboxId).then {
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
 **inboxId** | [**UUID**]() |  | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **doesInboxExist**
```swift
    open class func doesInboxExist( emailAddress: String) -> Promise<InboxExistsDto>
```

Does inbox exist

Check if inboxes exist by email address. Useful if you are sending emails to mailslurp addresses

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailAddress = "emailAddress_example" // String | Email address

// Does inbox exist
InboxControllerAPI.doesInboxExist(emailAddress: emailAddress).then {
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
 **emailAddress** | **String** | Email address | 

### Return type

[**InboxExistsDto**](InboxExistsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **flushExpired**
```swift
    open class func flushExpired( before: Date? = nil) -> Promise<FlushExpiredInboxesResult>
```

Remove expired inboxes

Remove any expired inboxes for your account (instead of waiting for scheduled removal on server)

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let before = Date() // Date | Optional expired at before flag to flush expired inboxes that have expired before the given time (optional)

// Remove expired inboxes
InboxControllerAPI.flushExpired(before: before).then {
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
 **before** | **Date** | Optional expired at before flag to flush expired inboxes that have expired before the given time | [optional] 

### Return type

[**FlushExpiredInboxesResult**](FlushExpiredInboxesResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllInboxes**
```swift
    open class func getAllInboxes( page: Int? = nil,  size: Int? = nil,  sort: Sort_getAllInboxes? = nil,  favourite: Bool? = nil,  search: String? = nil,  tag: String? = nil,  dEPRECATEDOptionallyFilterByTeamAccess: Bool? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageInboxProjection>
```

List All Inboxes Paginated

List inboxes in paginated form. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). You Can also filter by whether an inbox is favorited or use email address pattern. This method is the recommended way to query inboxes. The alternative `getInboxes` method returns a full list of inboxes but is limited to 100 results.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int | Optional page index in list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let favourite = true // Bool | Optionally filter results for favourites only (optional) (default to false)
let search = "search_example" // String | Optionally filter by search words partial matching ID, tags, name, and email address (optional)
let tag = "tag_example" // String | Optionally filter by tags. Will return inboxes that include given tags (optional)
let dEPRECATEDOptionallyFilterByTeamAccess = true // Bool |  (optional)
let since = Date() // Date | Optional filter by created after given date time (optional)
let before = Date() // Date | Optional filter by created before given date time (optional)

// List All Inboxes Paginated
InboxControllerAPI.getAllInboxes(page: page, size: size, sort: sort, favourite: favourite, search: search, tag: tag, dEPRECATEDOptionallyFilterByTeamAccess: dEPRECATEDOptionallyFilterByTeamAccess, since: since, before: before).then {
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
 **page** | **Int** | Optional page index in list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **favourite** | **Bool** | Optionally filter results for favourites only | [optional] [default to false]
 **search** | **String** | Optionally filter by search words partial matching ID, tags, name, and email address | [optional] 
 **tag** | **String** | Optionally filter by tags. Will return inboxes that include given tags | [optional] 
 **dEPRECATEDOptionallyFilterByTeamAccess** | **Bool** |  | [optional] 
 **since** | **Date** | Optional filter by created after given date time | [optional] 
 **before** | **Date** | Optional filter by created before given date time | [optional] 

### Return type

[**PageInboxProjection**](PageInboxProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmails**
```swift
    open class func getEmails( idOfInboxThatEmailsBelongsTo: UUID,  aliasForLimitAssessedFirstBeforeAssessingAnyPassedLimit: Int? = nil,  limit: Int? = nil,  sortTheResultsByReceivedDateAndDirectionASCOrDESC: SortTheResultsByReceivedDateAndDirectionASCOrDESC_getEmails? = nil,  retryTimeout: Int64? = nil,  delayTimeout: Int64? = nil,  minCount: Int64? = nil,  unreadOnly: Bool? = nil,  excludeEmailsReceivedAfterThisISO8601DateTime: Date? = nil,  excludeEmailsReceivedBeforeThisISO8601DateTime: Date? = nil) -> Promise<[EmailPreview]>
```

Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead.

List emails that an inbox has received. Only emails that are sent to the inbox's email address will appear in the inbox. It may take several seconds for any email you send to an inbox's email address to appear in the inbox. To make this endpoint wait for a minimum number of emails use the `minCount` parameter. The server will retry the inbox database until the `minCount` is satisfied or the `retryTimeout` is reached

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let idOfInboxThatEmailsBelongsTo = 987 // UUID | 
let aliasForLimitAssessedFirstBeforeAssessingAnyPassedLimit = 987 // Int |  (optional)
let limit = 987 // Int | Limit the result set, ordered by received date time sort direction. Maximum 100. For more listing options see the email controller (optional)
let sortTheResultsByReceivedDateAndDirectionASCOrDESC = "sortTheResultsByReceivedDateAndDirectionASCOrDESC_example" // String |  (optional)
let retryTimeout = 987 // Int64 | Maximum milliseconds to spend retrying inbox database until minCount emails are returned (optional)
let delayTimeout = 987 // Int64 |  (optional)
let minCount = 987 // Int64 | Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached. (optional)
let unreadOnly = true // Bool |  (optional)
let excludeEmailsReceivedAfterThisISO8601DateTime = Date() // Date |  (optional)
let excludeEmailsReceivedBeforeThisISO8601DateTime = Date() // Date |  (optional)

// Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead.
InboxControllerAPI.getEmails(idOfInboxThatEmailsBelongsTo: idOfInboxThatEmailsBelongsTo, aliasForLimitAssessedFirstBeforeAssessingAnyPassedLimit: aliasForLimitAssessedFirstBeforeAssessingAnyPassedLimit, limit: limit, sortTheResultsByReceivedDateAndDirectionASCOrDESC: sortTheResultsByReceivedDateAndDirectionASCOrDESC, retryTimeout: retryTimeout, delayTimeout: delayTimeout, minCount: minCount, unreadOnly: unreadOnly, excludeEmailsReceivedAfterThisISO8601DateTime: excludeEmailsReceivedAfterThisISO8601DateTime, excludeEmailsReceivedBeforeThisISO8601DateTime: excludeEmailsReceivedBeforeThisISO8601DateTime).then {
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
 **idOfInboxThatEmailsBelongsTo** | [**UUID**]() |  | 
 **aliasForLimitAssessedFirstBeforeAssessingAnyPassedLimit** | **Int** |  | [optional] 
 **limit** | **Int** | Limit the result set, ordered by received date time sort direction. Maximum 100. For more listing options see the email controller | [optional] 
 **sortTheResultsByReceivedDateAndDirectionASCOrDESC** | **String** |  | [optional] 
 **retryTimeout** | **Int64** | Maximum milliseconds to spend retrying inbox database until minCount emails are returned | [optional] 
 **delayTimeout** | **Int64** |  | [optional] 
 **minCount** | **Int64** | Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached. | [optional] 
 **unreadOnly** | **Bool** |  | [optional] 
 **excludeEmailsReceivedAfterThisISO8601DateTime** | **Date** |  | [optional] 
 **excludeEmailsReceivedBeforeThisISO8601DateTime** | **Date** |  | [optional] 

### Return type

[**[EmailPreview]**](EmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInbox**
```swift
    open class func getInbox( inboxId: UUID) -> Promise<InboxDto>
```

Get Inbox. Returns properties of an inbox.

Returns an inbox's properties, including its email address and ID.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | 

// Get Inbox. Returns properties of an inbox.
InboxControllerAPI.getInbox(inboxId: inboxId).then {
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
 **inboxId** | [**UUID**]() |  | 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxCount**
```swift
    open class func getInboxCount() -> Promise<CountDto>
```

Get total inbox count

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Get total inbox count
InboxControllerAPI.getInboxCount().then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CountDto**](CountDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxEmailCount**
```swift
    open class func getInboxEmailCount( idOfInboxThatEmailsBelongsTo: UUID) -> Promise<CountDto>
```

Get email count in inbox

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let idOfInboxThatEmailsBelongsTo = 987 // UUID | 

// Get email count in inbox
InboxControllerAPI.getInboxEmailCount(idOfInboxThatEmailsBelongsTo: idOfInboxThatEmailsBelongsTo).then {
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
 **idOfInboxThatEmailsBelongsTo** | [**UUID**]() |  | 

### Return type

[**CountDto**](CountDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxEmailsPaginated**
```swift
    open class func getInboxEmailsPaginated( idOfInboxThatEmailsBelongsTo: UUID,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getInboxEmailsPaginated? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageEmailPreview>
```

Get inbox emails paginated

Get a paginated list of emails in an inbox. Does not hold connections open.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let idOfInboxThatEmailsBelongsTo = 987 // UUID | 
let page = 987 // Int | Optional page index in inbox emails list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in inbox emails list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let since = Date() // Date | Optional filter by received after given date time (optional)
let before = Date() // Date | Optional filter by received before given date time (optional)

// Get inbox emails paginated
InboxControllerAPI.getInboxEmailsPaginated(idOfInboxThatEmailsBelongsTo: idOfInboxThatEmailsBelongsTo, page: page, size: size, sort: sort, since: since, before: before).then {
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
 **idOfInboxThatEmailsBelongsTo** | [**UUID**]() |  | 
 **page** | **Int** | Optional page index in inbox emails list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in inbox emails list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **since** | **Date** | Optional filter by received after given date time | [optional] 
 **before** | **Date** | Optional filter by received before given date time | [optional] 

### Return type

[**PageEmailPreview**](PageEmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxSentEmails**
```swift
    open class func getInboxSentEmails( inboxId: UUID,  page: Int? = nil,  optionalPageSizeInInboxSentEmailListPagination: Int? = nil,  sort: Sort_getInboxSentEmails? = nil,  searchFilter: String? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageSentEmailProjection>
```

Get Inbox Sent Emails

Returns an inbox's sent email receipts. Call individual sent email endpoints for more details. Note for privacy reasons the full body of sent emails is never stored. An MD5 hash hex is available for comparison instead.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | 
let page = 987 // Int | Optional page index in inbox sent email list pagination (optional) (default to 0)
let optionalPageSizeInInboxSentEmailListPagination = 987 // Int |  (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let searchFilter = "searchFilter_example" // String | Optional sent email search (optional)
let since = Date() // Date | Optional filter by sent after given date time (optional)
let before = Date() // Date | Optional filter by sent before given date time (optional)

// Get Inbox Sent Emails
InboxControllerAPI.getInboxSentEmails(inboxId: inboxId, page: page, optionalPageSizeInInboxSentEmailListPagination: optionalPageSizeInInboxSentEmailListPagination, sort: sort, searchFilter: searchFilter, since: since, before: before).then {
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
 **inboxId** | [**UUID**]() |  | 
 **page** | **Int** | Optional page index in inbox sent email list pagination | [optional] [default to 0]
 **optionalPageSizeInInboxSentEmailListPagination** | **Int** |  | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **searchFilter** | **String** | Optional sent email search | [optional] 
 **since** | **Date** | Optional filter by sent after given date time | [optional] 
 **before** | **Date** | Optional filter by sent before given date time | [optional] 

### Return type

[**PageSentEmailProjection**](PageSentEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxTags**
```swift
    open class func getInboxTags() -> Promise<Set<String>>
```

Get inbox tags

Get all inbox tags

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Get inbox tags
InboxControllerAPI.getInboxTags().then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Set<String>**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxes**
```swift
    open class func getInboxes( size: Int? = nil,  sort: Sort_getInboxes? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<[InboxDto]>
```

List Inboxes and email addresses

List the inboxes you have created. Note use of the more advanced `getAllEmails` is recommended and allows paginated access using a limit and sort parameter.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let size = 987 // Int | Optional result size limit. Note an automatic limit of 100 results is applied. See the paginated `getAllEmails` for larger queries. (optional) (default to 100)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let since = Date() // Date | Optional filter by created after given date time (optional)
let before = Date() // Date | Optional filter by created before given date time (optional)

// List Inboxes and email addresses
InboxControllerAPI.getInboxes(size: size, sort: sort, since: since, before: before).then {
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
 **size** | **Int** | Optional result size limit. Note an automatic limit of 100 results is applied. See the paginated &#x60;getAllEmails&#x60; for larger queries. | [optional] [default to 100]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **since** | **Date** | Optional filter by created after given date time | [optional] 
 **before** | **Date** | Optional filter by created before given date time | [optional] 

### Return type

[**[InboxDto]**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getOrganizationInboxes**
```swift
    open class func getOrganizationInboxes( page: Int? = nil,  size: Int? = nil,  sort: Sort_getOrganizationInboxes? = nil,  searchFilter: String? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageOrganizationInboxProjection>
```

List Organization Inboxes Paginated

List organization inboxes in paginated form. These are inboxes created with `allowTeamAccess` flag enabled. Organization inboxes are `readOnly` for non-admin users. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int | Optional page index in list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let searchFilter = "searchFilter_example" // String | Optional search filter (optional)
let since = Date() // Date | Optional filter by created after given date time (optional)
let before = Date() // Date | Optional filter by created before given date time (optional)

// List Organization Inboxes Paginated
InboxControllerAPI.getOrganizationInboxes(page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before).then {
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
 **page** | **Int** | Optional page index in list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **searchFilter** | **String** | Optional search filter | [optional] 
 **since** | **Date** | Optional filter by created after given date time | [optional] 
 **before** | **Date** | Optional filter by created before given date time | [optional] 

### Return type

[**PageOrganizationInboxProjection**](PageOrganizationInboxProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **listInboxRulesets**
```swift
    open class func listInboxRulesets( inboxId: UUID,  page: Int? = nil,  size: Int? = nil,  sort: Sort_listInboxRulesets? = nil,  searchFilter: String? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageInboxRulesetDto>
```

List inbox rulesets

List all rulesets attached to an inbox

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | 
let page = 987 // Int | Optional page index in inbox ruleset list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in inbox ruleset list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let searchFilter = "searchFilter_example" // String | Optional search filter (optional)
let since = Date() // Date | Optional filter by created after given date time (optional)
let before = Date() // Date | Optional filter by created before given date time (optional)

// List inbox rulesets
InboxControllerAPI.listInboxRulesets(inboxId: inboxId, page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before).then {
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
 **inboxId** | [**UUID**]() |  | 
 **page** | **Int** | Optional page index in inbox ruleset list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in inbox ruleset list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **searchFilter** | **String** | Optional search filter | [optional] 
 **since** | **Date** | Optional filter by created after given date time | [optional] 
 **before** | **Date** | Optional filter by created before given date time | [optional] 

### Return type

[**PageInboxRulesetDto**](PageInboxRulesetDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **listInboxTrackingPixels**
```swift
    open class func listInboxTrackingPixels( inboxId: UUID,  page: Int? = nil,  optionalPageSizeInInboxTrackingPixelListPagination: Int? = nil,  sort: Sort_listInboxTrackingPixels? = nil,  searchFilter: String? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageTrackingPixelProjection>
```

List inbox tracking pixels

List all tracking pixels sent from an inbox

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | 
let page = 987 // Int | Optional page index in inbox tracking pixel list pagination (optional) (default to 0)
let optionalPageSizeInInboxTrackingPixelListPagination = 987 // Int |  (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let searchFilter = "searchFilter_example" // String | Optional search filter (optional)
let since = Date() // Date | Optional filter by created after given date time (optional)
let before = Date() // Date | Optional filter by created before given date time (optional)

// List inbox tracking pixels
InboxControllerAPI.listInboxTrackingPixels(inboxId: inboxId, page: page, optionalPageSizeInInboxTrackingPixelListPagination: optionalPageSizeInInboxTrackingPixelListPagination, sort: sort, searchFilter: searchFilter, since: since, before: before).then {
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
 **inboxId** | [**UUID**]() |  | 
 **page** | **Int** | Optional page index in inbox tracking pixel list pagination | [optional] [default to 0]
 **optionalPageSizeInInboxTrackingPixelListPagination** | **Int** |  | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **searchFilter** | **String** | Optional search filter | [optional] 
 **since** | **Date** | Optional filter by created after given date time | [optional] 
 **before** | **Date** | Optional filter by created before given date time | [optional] 

### Return type

[**PageTrackingPixelProjection**](PageTrackingPixelProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sendEmail**
```swift
    open class func sendEmail( iDOfTheInboxYouWantToSendTheEmailFrom: UUID,  sendEmailOptions: SendEmailOptions) -> Promise<Void>
```

Send Email

Send an email from an inbox's email address.  The request body should contain the `SendEmailOptions` that include recipients, attachments, body etc. See `SendEmailOptions` for all available properties. Note the `inboxId` refers to the inbox's id not the inbox's email address. See https://www.mailslurp.com/guides/ for more information on how to send emails. This method does not return a sent email entity due to legacy reasons. To send and get a sent email as returned response use the sister method `sendEmailAndConfirm`.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let iDOfTheInboxYouWantToSendTheEmailFrom = 987 // UUID | 
let sendEmailOptions = SendEmailOptions(toContacts: [123], toGroup: 123, to: ["to_example"], from: "from_example", cc: ["cc_example"], bcc: ["bcc_example"], subject: "subject_example", replyTo: "replyTo_example", body: "body_example", html: false, charset: "charset_example", attachments: ["attachments_example"], templateVariables: "TODO", template: 123, sendStrategy: "sendStrategy_example", useInboxName: false, addTrackingPixel: false) // SendEmailOptions | 

// Send Email
InboxControllerAPI.sendEmail(iDOfTheInboxYouWantToSendTheEmailFrom: iDOfTheInboxYouWantToSendTheEmailFrom, sendEmailOptions: sendEmailOptions).then {
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
 **iDOfTheInboxYouWantToSendTheEmailFrom** | [**UUID**]() |  | 
 **sendEmailOptions** | [**SendEmailOptions**](SendEmailOptions) |  | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sendEmailAndConfirm**
```swift
    open class func sendEmailAndConfirm( iDOfTheInboxYouWantToSendTheEmailFrom: UUID,  sendEmailOptions: SendEmailOptions) -> Promise<SentEmailDto>
```

Send email and return sent confirmation

Sister method for standard `sendEmail` method with the benefit of returning a `SentEmail` entity confirming the successful sending of the email with a link to the sent object created for it.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let iDOfTheInboxYouWantToSendTheEmailFrom = 987 // UUID | 
let sendEmailOptions = SendEmailOptions(toContacts: [123], toGroup: 123, to: ["to_example"], from: "from_example", cc: ["cc_example"], bcc: ["bcc_example"], subject: "subject_example", replyTo: "replyTo_example", body: "body_example", html: false, charset: "charset_example", attachments: ["attachments_example"], templateVariables: "TODO", template: 123, sendStrategy: "sendStrategy_example", useInboxName: false, addTrackingPixel: false) // SendEmailOptions | 

// Send email and return sent confirmation
InboxControllerAPI.sendEmailAndConfirm(iDOfTheInboxYouWantToSendTheEmailFrom: iDOfTheInboxYouWantToSendTheEmailFrom, sendEmailOptions: sendEmailOptions).then {
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
 **iDOfTheInboxYouWantToSendTheEmailFrom** | [**UUID**]() |  | 
 **sendEmailOptions** | [**SendEmailOptions**](SendEmailOptions) |  | 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sendTestEmail**
```swift
    open class func sendTestEmail( inboxId: UUID) -> Promise<Void>
```

Send a test email to inbox

Send an inbox a test email to test email receiving is working

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | 

// Send a test email to inbox
InboxControllerAPI.sendTestEmail(inboxId: inboxId).then {
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
 **inboxId** | [**UUID**]() |  | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **setInboxFavourited**
```swift
    open class func setInboxFavourited( inboxId: UUID,  setInboxFavouritedOptions: SetInboxFavouritedOptions) -> Promise<InboxDto>
```

Set inbox favourited state

Set and return new favourite state for an inbox

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | 
let setInboxFavouritedOptions = SetInboxFavouritedOptions(state: false) // SetInboxFavouritedOptions | 

// Set inbox favourited state
InboxControllerAPI.setInboxFavourited(inboxId: inboxId, setInboxFavouritedOptions: setInboxFavouritedOptions).then {
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
 **inboxId** | [**UUID**]() |  | 
 **setInboxFavouritedOptions** | [**SetInboxFavouritedOptions**](SetInboxFavouritedOptions) |  | 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateInbox**
```swift
    open class func updateInbox( inboxId: UUID,  updateInboxOptions: UpdateInboxOptions) -> Promise<InboxDto>
```

Update Inbox. Change name and description. Email address is not editable.

Update editable fields on an inbox

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | 
let updateInboxOptions = UpdateInboxOptions(name: "name_example", _description: "_description_example", tags: ["tags_example"], expiresAt: Date(), favourite: false) // UpdateInboxOptions | 

// Update Inbox. Change name and description. Email address is not editable.
InboxControllerAPI.updateInbox(inboxId: inboxId, updateInboxOptions: updateInboxOptions).then {
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
 **inboxId** | [**UUID**]() |  | 
 **updateInboxOptions** | [**UpdateInboxOptions**](UpdateInboxOptions) |  | 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

