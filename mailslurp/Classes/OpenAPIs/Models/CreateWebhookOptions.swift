//
// CreateWebhookOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

/** Options for creating a webhook. Webhooks can be attached to inboxes and MailSlurp will POST a webhook payload to the URL specified whenever the inbox receives an email. Webhooks are great for processing many inbound emails. */
@objc public class CreateWebhookOptions: NSObject, Codable {

    public enum EventName: String, Codable, CaseIterable {
        case emailReceived = "EMAIL_RECEIVED"
        case newEmail = "NEW_EMAIL"
        case newContact = "NEW_CONTACT"
        case newAttachment = "NEW_ATTACHMENT"
        case emailOpened = "EMAIL_OPENED"
        case emailRead = "EMAIL_READ"
    }
    /** Public URL on your server that MailSlurp can post WebhookNotification payload to when an email is received or an event is trigger. The payload of the submitted JSON is dependent on the webhook event type. The default &#x60;EMAIL_RECEIVED&#x60; payload is described by &#x60;https://api.mailslurp.com/schemas/webhook-payload&#x60;. The other events, &#x60;NEW_EMAIL&#x60;, &#x60;NEW_CONTACT&#x60;, and &#x60;NEW_ATTACHMENT&#x60; are described by &#x60;https://api.mailslurp.com/schemas/webhook-new-email-payload&#x60;, &#x60;https://api.mailslurp.com/schemas/webhook-new-contact-payload&#x60;,&#x60;https://api.mailslurp.com/schemas/webhook-new-attachment-payload&#x60; respectively. */
    public var url: String?
    public var basicAuth: BasicAuthOptions?
    /** Optional name for the webhook */
    public var name: String?
    /** Optional webhook event name. Default is &#x60;EMAIL_RECEIVED&#x60; and is triggered when an email is received by the inbox associated with the webhook. Payload differ according to the webhook event name. The other events are &#x60;NEW_EMAIL&#x60;, &#x60;NEW_CONTACT&#x60;, and &#x60;NEW_ATTACHMENT&#x60; and &#x60;EMAIL_OPENED&#x60;. &#x60;EMAIL_OPENED&#x60; requires the use of tracking pixels when sending. See the email tracking guide for more information. */
    public var eventName: EventName?

    public init(url: String? = nil, basicAuth: BasicAuthOptions? = nil, name: String? = nil, eventName: EventName? = nil) {
        self.url = url
        self.basicAuth = basicAuth
        self.name = name
        self.eventName = eventName
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case url
        case basicAuth
        case name
        case eventName
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(basicAuth, forKey: .basicAuth)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(eventName, forKey: .eventName)
    }



}
