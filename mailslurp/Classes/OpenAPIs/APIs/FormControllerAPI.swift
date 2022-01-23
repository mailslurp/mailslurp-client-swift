//
// FormControllerAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import PromiseKit

@objc open class FormControllerAPI : NSObject {
    /**
     Submit a form to be parsed and sent as an email to an address determined by the form fields
     
     - parameter to: (query) The email address that submitted form should be sent to. (optional)
     - parameter subject: (query) Optional subject of the email that will be sent. (optional)
     - parameter redirectTo: (query) Optional URL to redirect form submitter to after submission. If not present user will see a success message. (optional)
     - parameter emailAddress: (query) Email address of the submitting user. Include this if you wish to record the submitters email address and reply to it later. (optional)
     - parameter successMessage: (query) Optional success message to display if no _redirectTo present. (optional)
     - parameter spamCheck: (query) Optional but recommended field that catches spammers out. Include as a hidden form field but LEAVE EMPTY. Spam-bots will usually fill every field. If the _spamCheck field is filled the form submission will be ignored. (optional)
     - parameter otherParameters: (query) All other parameters or fields will be accepted and attached to the sent email. This includes files and any HTML form field with a name. These fields will become the body of the email that is sent. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<String>
     */
    open class func submitForm( to: String? = nil,  subject: String? = nil,  redirectTo: String? = nil,  emailAddress: String? = nil,  successMessage: String? = nil,  spamCheck: String? = nil,  otherParameters: String? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<String> {
        let deferred = Promise<String>.pending()
        submitFormWithRequestBuilder(to: to, subject: subject, redirectTo: redirectTo, emailAddress: emailAddress, successMessage: successMessage, spamCheck: spamCheck, otherParameters: otherParameters).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body!)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Submit a form to be parsed and sent as an email to an address determined by the form fields
     - POST /forms
     - This endpoint allows you to submit HTML forms and receive the field values and files via email.   #### Parameters The endpoint looks for special meta parameters in the form fields OR in the URL request parameters. The meta parameters can be used to specify the behaviour of the email.   You must provide at-least a `_to` email address to tell the endpoint where the form should be emailed. These can be submitted as hidden HTML input fields with the corresponding `name` attributes or as URL query parameters such as `?_to=test@example.com`  The endpoint takes all other form fields that are named and includes them in the message body of the email. Files are sent as attachments.  #### Submitting This endpoint accepts form submission via POST method. It accepts `application/x-www-form-urlencoded`, and `multipart/form-data` content-types.  #### HTML Example ```html <form    action=\"https://api.mailslurp.com/forms\"   method=\"post\" >   <input name=\"_to\" type=\"hidden\" value=\"test@example.com\"/>   <textarea name=\"feedback\"></textarea>   <button type=\"submit\">Submit</button> </form> ```  #### URL Example ```html <form    action=\"https://api.mailslurp.com/forms?_to=test@example.com\"   method=\"post\" >   <textarea name=\"feedback\"></textarea>   <button type=\"submit\">Submit</button> </form> ```    The email address is specified by a `_to` field OR is extracted from an email alias specified by a `_toAlias` field (see the alias controller for more information).  Endpoint accepts .  You can specify a content type in HTML forms using the `enctype` attribute, for instance: `<form enctype=\"multipart/form-data\">`.  
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter to: (query) The email address that submitted form should be sent to. (optional)
     - parameter subject: (query) Optional subject of the email that will be sent. (optional)
     - parameter redirectTo: (query) Optional URL to redirect form submitter to after submission. If not present user will see a success message. (optional)
     - parameter emailAddress: (query) Email address of the submitting user. Include this if you wish to record the submitters email address and reply to it later. (optional)
     - parameter successMessage: (query) Optional success message to display if no _redirectTo present. (optional)
     - parameter spamCheck: (query) Optional but recommended field that catches spammers out. Include as a hidden form field but LEAVE EMPTY. Spam-bots will usually fill every field. If the _spamCheck field is filled the form submission will be ignored. (optional)
     - parameter otherParameters: (query) All other parameters or fields will be accepted and attached to the sent email. This includes files and any HTML form field with a name. These fields will become the body of the email that is sent. (optional)
     - returns: RequestBuilder<String> 
     */
    open class func submitFormWithRequestBuilder(to: String? = nil, subject: String? = nil, redirectTo: String? = nil, emailAddress: String? = nil, successMessage: String? = nil, spamCheck: String? = nil, otherParameters: String? = nil) -> RequestBuilder<String> {
        let path = "/forms"
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "_to": to?.encodeToJSON(),
            "_subject": subject?.encodeToJSON(),
            "_redirectTo": redirectTo?.encodeToJSON(),
            "_emailAddress": emailAddress?.encodeToJSON(),
            "_successMessage": successMessage?.encodeToJSON(),
            "_spamCheck": spamCheck?.encodeToJSON(),
            "otherParameters": otherParameters?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<String>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
