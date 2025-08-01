//
// WebhookNewEmailPayload.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** NEW_EMAIL webhook payload. Sent to your webhook url endpoint via HTTP POST when an email is received by the inbox that your webhook is attached to. Use the email ID to fetch the full email body or attachments. */
@objcMembers public class WebhookNewEmailPayload: NSObject, Codable, ParameterConvertible {

    public enum EventName: String, Sendable, Codable, CaseIterable {
        case emailReceived = "EMAIL_RECEIVED"
        case newAiTransformResult = "NEW_AI_TRANSFORM_RESULT"
        case newEmail = "NEW_EMAIL"
        case newContact = "NEW_CONTACT"
        case newAttachment = "NEW_ATTACHMENT"
        case emailOpened = "EMAIL_OPENED"
        case emailRead = "EMAIL_READ"
        case deliveryStatus = "DELIVERY_STATUS"
        case bounce = "BOUNCE"
        case bounceRecipient = "BOUNCE_RECIPIENT"
        case newSms = "NEW_SMS"
        case newGuestUser = "NEW_GUEST_USER"
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
    /** Id of the domain that received an email */
    public var domainId: UUID?
    /** ID of the email that was received. Use this ID for fetching the email with the `EmailController`. */
    public var emailId: UUID
    /** Date time of event creation */
    public var createdAt: Date
    /** List of `To` recipient email addresses that the email was addressed to. See recipients object for names. */
    public var to: [String]
    /** Who the email was sent from. An email address - see fromName for the sender name. */
    public var from: String
    /** List of `CC` recipients email addresses that the email was addressed to. See recipients object for names. */
    public var cc: [String]
    /** List of `BCC` recipients email addresses that the email was addressed to. See recipients object for names. */
    public var bcc: [String]
    /** The subject line of the email message as specified by SMTP subject header */
    public var subject: String?
    /** List of attachment meta data objects if attachments present */
    public var attachmentMetaDatas: [AttachmentMetaData]

    public init(messageId: String, webhookId: UUID, eventName: EventName, webhookName: String? = nil, inboxId: UUID, domainId: UUID? = nil, emailId: UUID, createdAt: Date, to: [String], from: String, cc: [String], bcc: [String], subject: String? = nil, attachmentMetaDatas: [AttachmentMetaData]) {
        self.messageId = messageId
        self.webhookId = webhookId
        self.eventName = eventName
        self.webhookName = webhookName
        self.inboxId = inboxId
        self.domainId = domainId
        self.emailId = emailId
        self.createdAt = createdAt
        self.to = to
        self.from = from
        self.cc = cc
        self.bcc = bcc
        self.subject = subject
        self.attachmentMetaDatas = attachmentMetaDatas
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case messageId
        case webhookId
        case eventName
        case webhookName
        case inboxId
        case domainId
        case emailId
        case createdAt
        case to
        case from
        case cc
        case bcc
        case subject
        case attachmentMetaDatas
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(messageId, forKey: .messageId)
        try container.encode(webhookId, forKey: .webhookId)
        try container.encode(eventName, forKey: .eventName)
        try container.encodeIfPresent(webhookName, forKey: .webhookName)
        try container.encode(inboxId, forKey: .inboxId)
        try container.encodeIfPresent(domainId, forKey: .domainId)
        try container.encode(emailId, forKey: .emailId)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(to, forKey: .to)
        try container.encode(from, forKey: .from)
        try container.encode(cc, forKey: .cc)
        try container.encode(bcc, forKey: .bcc)
        try container.encodeIfPresent(subject, forKey: .subject)
        try container.encode(attachmentMetaDatas, forKey: .attachmentMetaDatas)
    }
}

