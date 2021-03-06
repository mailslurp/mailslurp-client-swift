//
// WebhookNewEmailPayload.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

/** NEW_EMAIL webhook payload. Sent to your webhook url endpoint via HTTP POST when an email is received by the inbox that your webhook is attached to. Use the email ID to fetch the full email body or attachments. */
@objc public class WebhookNewEmailPayload: NSObject, Codable {

    public enum EventName: String, Codable, CaseIterable {
        case emailReceived = "EMAIL_RECEIVED"
        case newEmail = "NEW_EMAIL"
        case newContact = "NEW_CONTACT"
        case newAttachment = "NEW_ATTACHMENT"
        case emailOpened = "EMAIL_OPENED"
    }
    /** List of attachment meta data objects if attachments present */
    public var attachmentMetaDatas: [AttachmentMetaData]?
    /** List of &#x60;BCC&#x60; recipients email was addressed to */
    public var bcc: [String]?
    /** List of &#x60;CC&#x60; recipients email was addressed to */
    public var cc: [String]?
    /** Date time of event creation */
    public var createdAt: Date?
    /** ID of the email that was received. Use this ID for fetching the email with the &#x60;EmailController&#x60;. */
    public var emailId: UUID?
    /** Name of the event type webhook is being triggered for. */
    public var eventName: EventName?
    /** Who the email was sent from */
    public var from: String?
    /** Id of the inbox that received an email */
    public var inboxId: UUID?
    /** Idempotent message ID. Store this ID locally or in a database to prevent message duplication. */
    public var messageId: String?
    /** The subject line of the email message */
    public var subject: String?
    /** List of &#x60;To&#x60; recipients that email was addressed to */
    public var to: [String]?
    /** ID of webhook entity being triggered */
    public var webhookId: UUID?
    /** Name of the webhook being triggered */
    public var webhookName: String?

    public init(attachmentMetaDatas: [AttachmentMetaData]? = nil, bcc: [String]? = nil, cc: [String]? = nil, createdAt: Date? = nil, emailId: UUID? = nil, eventName: EventName? = nil, from: String? = nil, inboxId: UUID? = nil, messageId: String? = nil, subject: String? = nil, to: [String]? = nil, webhookId: UUID? = nil, webhookName: String? = nil) {
        self.attachmentMetaDatas = attachmentMetaDatas
        self.bcc = bcc
        self.cc = cc
        self.createdAt = createdAt
        self.emailId = emailId
        self.eventName = eventName
        self.from = from
        self.inboxId = inboxId
        self.messageId = messageId
        self.subject = subject
        self.to = to
        self.webhookId = webhookId
        self.webhookName = webhookName
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case attachmentMetaDatas
        case bcc
        case cc
        case createdAt
        case emailId
        case eventName
        case from
        case inboxId
        case messageId
        case subject
        case to
        case webhookId
        case webhookName
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(attachmentMetaDatas, forKey: .attachmentMetaDatas)
        try container.encodeIfPresent(bcc, forKey: .bcc)
        try container.encodeIfPresent(cc, forKey: .cc)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(emailId, forKey: .emailId)
        try container.encodeIfPresent(eventName, forKey: .eventName)
        try container.encodeIfPresent(from, forKey: .from)
        try container.encodeIfPresent(inboxId, forKey: .inboxId)
        try container.encodeIfPresent(messageId, forKey: .messageId)
        try container.encodeIfPresent(subject, forKey: .subject)
        try container.encodeIfPresent(to, forKey: .to)
        try container.encodeIfPresent(webhookId, forKey: .webhookId)
        try container.encodeIfPresent(webhookName, forKey: .webhookName)
    }



}
