//
// CreateWebhookOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Options for creating a webhook. Webhooks can be attached to inboxes and MailSlurp will POST a webhook payload to the URL specified whenever the webhook&#39;s event is triggered. Webhooks are great for processing many inbound emails and responding to other events at scale. Customize the payload sent to your endpoint by setting the `requestBodyTemplate` property to a string with moustache style variables. Property names from the standard payload model for the given event are available as variables. */
@objc public class CreateWebhookOptions: NSObject, Codable, JSONEncodable {

    public enum EventName: String, Codable, CaseIterable {
        case emailReceived = "EMAIL_RECEIVED"
        case newEmail = "NEW_EMAIL"
        case newContact = "NEW_CONTACT"
        case newAttachment = "NEW_ATTACHMENT"
        case emailOpened = "EMAIL_OPENED"
        case emailRead = "EMAIL_READ"
        case deliveryStatus = "DELIVERY_STATUS"
        case bounce = "BOUNCE"
        case bounceRecipient = "BOUNCE_RECIPIENT"
        case newSms = "NEW_SMS"
    }
    /** Public URL on your server that MailSlurp can post WebhookNotification payload to when an email is received or an event is trigger. The payload of the submitted JSON is dependent on the webhook event type. See docs.mailslurp.com/webhooks for event payload documentation. */
    public var url: String
    public var basicAuth: BasicAuthOptions?
    /** Optional name for the webhook */
    public var name: String?
    /** Optional webhook event name. Default is `EMAIL_RECEIVED` and is triggered when an email is received by the inbox associated with the webhook. Payload differ according to the webhook event name. */
    public var eventName: EventName?
    public var includeHeaders: WebhookHeaders?
    /** Template for the JSON body of the webhook request that will be sent to your server. Use Moustache style `{{variableName}}` templating to use parts of the standard webhook payload for the given event. */
    public var requestBodyTemplate: String?
    /** Ignore insecure SSL certificates when sending request. Useful for self-signed certs. */
    public var ignoreInsecureSslCertificates: Bool?
    public var ignoreInsecureSslCertificatesNum: NSNumber? {
        get {
            return ignoreInsecureSslCertificates as NSNumber?
        }
    }

    public init(url: String, basicAuth: BasicAuthOptions? = nil, name: String? = nil, eventName: EventName? = nil, includeHeaders: WebhookHeaders? = nil, requestBodyTemplate: String? = nil, ignoreInsecureSslCertificates: Bool? = nil) {
        self.url = url
        self.basicAuth = basicAuth
        self.name = name
        self.eventName = eventName
        self.includeHeaders = includeHeaders
        self.requestBodyTemplate = requestBodyTemplate
        self.ignoreInsecureSslCertificates = ignoreInsecureSslCertificates
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case url
        case basicAuth
        case name
        case eventName
        case includeHeaders
        case requestBodyTemplate
        case ignoreInsecureSslCertificates
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(url, forKey: .url)
        try container.encodeIfPresent(basicAuth, forKey: .basicAuth)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(eventName, forKey: .eventName)
        try container.encodeIfPresent(includeHeaders, forKey: .includeHeaders)
        try container.encodeIfPresent(requestBodyTemplate, forKey: .requestBodyTemplate)
        try container.encodeIfPresent(ignoreInsecureSslCertificates, forKey: .ignoreInsecureSslCertificates)
    }
}

