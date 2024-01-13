//
// WebhookEmailOpenedPayload.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** EMAIL_OPENED webhook payload. Sent to your webhook url endpoint via HTTP POST when an email containing a tracking pixel is opened and the pixel image is loaded by a reader. */
@objc public class WebhookEmailOpenedPayload: NSObject, Codable, JSONEncodable {

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
    /** Idempotent message ID. Store this ID locally or in a database to prevent message duplication. */
    public var messageId: String
    /** ID of webhook entity being triggered */
    public var webhookId: UUID
    /** Name of the event type webhook is being triggered for. */
    public var eventName: EventName
    /** Name of the webhook being triggered */
    public var webhookName: String?
    /** Id of the inbox */
    public var inboxId: UUID
    /** ID of the tracking pixel */
    public var pixelId: UUID
    /** ID of sent email */
    public var sentEmailId: UUID
    /** Email address for the recipient of the tracking pixel */
    public var recipient: String
    /** Date time of event creation */
    public var createdAt: Date

    public init(messageId: String, webhookId: UUID, eventName: EventName, webhookName: String? = nil, inboxId: UUID, pixelId: UUID, sentEmailId: UUID, recipient: String, createdAt: Date) {
        self.messageId = messageId
        self.webhookId = webhookId
        self.eventName = eventName
        self.webhookName = webhookName
        self.inboxId = inboxId
        self.pixelId = pixelId
        self.sentEmailId = sentEmailId
        self.recipient = recipient
        self.createdAt = createdAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case messageId
        case webhookId
        case eventName
        case webhookName
        case inboxId
        case pixelId
        case sentEmailId
        case recipient
        case createdAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(messageId, forKey: .messageId)
        try container.encode(webhookId, forKey: .webhookId)
        try container.encode(eventName, forKey: .eventName)
        try container.encodeIfPresent(webhookName, forKey: .webhookName)
        try container.encode(inboxId, forKey: .inboxId)
        try container.encode(pixelId, forKey: .pixelId)
        try container.encode(sentEmailId, forKey: .sentEmailId)
        try container.encode(recipient, forKey: .recipient)
        try container.encode(createdAt, forKey: .createdAt)
    }
}

