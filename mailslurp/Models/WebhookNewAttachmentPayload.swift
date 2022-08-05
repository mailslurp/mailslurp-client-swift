//
// WebhookNewAttachmentPayload.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** NEW_ATTACHMENT webhook payload. Sent to your webhook url endpoint via HTTP POST when an email is received by the inbox that your webhook is attached to that contains an attachment. You can use the attachmentId to download the attachment. */
@objc public class WebhookNewAttachmentPayload: NSObject, Codable {

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
    /** Idempotent message ID. Store this ID locally or in a database to prevent message duplication. */
    public var messageId: String
    /** ID of webhook entity being triggered */
    public var webhookId: UUID
    /** Name of the webhook being triggered */
    public var webhookName: String?
    /** Name of the event type webhook is being triggered for. */
    public var eventName: EventName
    /** ID of attachment. Use the `AttachmentController` to */
    public var attachmentId: String
    /** Filename of the attachment if present */
    public var name: String
    /** Content type of attachment such as &#39;image/png&#39; or &#39;application/pdf */
    public var contentType: String
    /** Size of attachment in bytes */
    public var contentLength: Int64

    public init(messageId: String, webhookId: UUID, webhookName: String? = nil, eventName: EventName, attachmentId: String, name: String, contentType: String, contentLength: Int64) {
        self.messageId = messageId
        self.webhookId = webhookId
        self.webhookName = webhookName
        self.eventName = eventName
        self.attachmentId = attachmentId
        self.name = name
        self.contentType = contentType
        self.contentLength = contentLength
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case messageId
        case webhookId
        case webhookName
        case eventName
        case attachmentId
        case name
        case contentType
        case contentLength
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(messageId, forKey: .messageId)
        try container.encode(webhookId, forKey: .webhookId)
        try container.encodeIfPresent(webhookName, forKey: .webhookName)
        try container.encode(eventName, forKey: .eventName)
        try container.encode(attachmentId, forKey: .attachmentId)
        try container.encode(name, forKey: .name)
        try container.encode(contentType, forKey: .contentType)
        try container.encode(contentLength, forKey: .contentLength)
    }



}
