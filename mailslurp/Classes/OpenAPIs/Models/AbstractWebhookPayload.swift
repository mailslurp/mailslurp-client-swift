//
// AbstractWebhookPayload.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

/** Abstract webhook payload. Use the correct payload type for your webhook event type in order to access all the specific properties for that event. See the &#x60;NEW_EMAIL&#x60;,&#x60;NEW_CONTACT&#x60;, &#x60;NEW_ATTACHMENT&#x60; and &#x60;EMAIL_OPENED&#x60; payloads for the properties available for those events. */
@objc public class AbstractWebhookPayload: NSObject, Codable {

    public enum EventName: String, Codable, CaseIterable {
        case emailReceived = "EMAIL_RECEIVED"
        case newEmail = "NEW_EMAIL"
        case newContact = "NEW_CONTACT"
        case newAttachment = "NEW_ATTACHMENT"
        case emailOpened = "EMAIL_OPENED"
        case emailRead = "EMAIL_READ"
    }
    public var webhookName: String?
    public var eventName: EventName
    public var webhookId: UUID
    public var messageId: String

    public init(webhookName: String? = nil, eventName: EventName, webhookId: UUID, messageId: String) {
        self.webhookName = webhookName
        self.eventName = eventName
        self.webhookId = webhookId
        self.messageId = messageId
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case webhookName
        case eventName
        case webhookId
        case messageId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(webhookName, forKey: .webhookName)
        try container.encode(eventName, forKey: .eventName)
        try container.encode(webhookId, forKey: .webhookId)
        try container.encode(messageId, forKey: .messageId)
    }



}
