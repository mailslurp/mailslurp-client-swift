//
// WebhookEmailReadPayload.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** EMAIL_READ webhook payload. Sent to your webhook url endpoint via HTTP POST when an email is read. This happens when an email is requested in full from the API or a user views the email in the dashboard. */
public struct WebhookEmailReadPayload: Codable, Hashable {

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
    /** Name of the event type webhook is being triggered for. */
    public var eventName: EventName
    /** Name of the webhook being triggered */
    public var webhookName: String?
    /** ID of the email that was received. Use this ID for fetching the email with the `EmailController`. */
    public var emailId: UUID
    /** Id of the inbox that received an email */
    public var inboxId: UUID
    /** Is the email read */
    public var emailIsRead: Bool
    /** Date time of event creation */
    public var createdAt: Date

    public init(messageId: String, webhookId: UUID, eventName: EventName, webhookName: String? = nil, emailId: UUID, inboxId: UUID, emailIsRead: Bool, createdAt: Date) {
        self.messageId = messageId
        self.webhookId = webhookId
        self.eventName = eventName
        self.webhookName = webhookName
        self.emailId = emailId
        self.inboxId = inboxId
        self.emailIsRead = emailIsRead
        self.createdAt = createdAt
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case messageId
        case webhookId
        case eventName
        case webhookName
        case emailId
        case inboxId
        case emailIsRead
        case createdAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(messageId, forKey: .messageId)
        try container.encode(webhookId, forKey: .webhookId)
        try container.encode(eventName, forKey: .eventName)
        try container.encodeIfPresent(webhookName, forKey: .webhookName)
        try container.encode(emailId, forKey: .emailId)
        try container.encode(inboxId, forKey: .inboxId)
        try container.encode(emailIsRead, forKey: .emailIsRead)
        try container.encode(createdAt, forKey: .createdAt)
    }



}
