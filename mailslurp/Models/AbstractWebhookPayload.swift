//
// AbstractWebhookPayload.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** Abstract webhook payload. Use the correct payload type for your webhook event type in order to access all the specific properties for that event. See the `NEW_EMAIL`,`NEW_CONTACT`, `NEW_ATTACHMENT` and `EMAIL_OPENED` payloads for the properties available for those events. */
@objc public class AbstractWebhookPayload: NSObject, Codable {

    public enum EventName: String, Codable, CaseIterable {
        case emailReceived = "EMAIL_RECEIVED"
        case newEmail = "NEW_EMAIL"
        case newContact = "NEW_CONTACT"
        case newAttachment = "NEW_ATTACHMENT"
        case emailOpened = "EMAIL_OPENED"
        case emailRead = "EMAIL_READ"
        case bounce = "BOUNCE"
        case bounceRecipient = "BOUNCE_RECIPIENT"
        case newSms = "NEW_SMS"
    }
    public var eventName: EventName
    public var messageId: String
    public var webhookId: UUID
    public var webhookName: String?

    public init(eventName: EventName, messageId: String, webhookId: UUID, webhookName: String? = nil) {
        self.eventName = eventName
        self.messageId = messageId
        self.webhookId = webhookId
        self.webhookName = webhookName
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case eventName
        case messageId
        case webhookId
        case webhookName
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(eventName, forKey: .eventName)
        try container.encode(messageId, forKey: .messageId)
        try container.encode(webhookId, forKey: .webhookId)
        try container.encodeIfPresent(webhookName, forKey: .webhookName)
    }



}