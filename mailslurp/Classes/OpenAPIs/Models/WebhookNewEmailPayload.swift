//
// WebhookNewEmailPayload.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** NEW_EMAIL webhook payload */

@objc public class WebhookNewEmailPayload: NSObject, Codable { 

    public enum EventName: String, Codable, CaseIterable {
        case emailReceived = "EMAIL_RECEIVED"
        case newEmail = "NEW_EMAIL"
        case newContact = "NEW_CONTACT"
        case newAttachment = "NEW_ATTACHMENT"
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

    public init(attachmentMetaDatas: [AttachmentMetaData]?, bcc: [String]?, cc: [String]?, createdAt: Date?, emailId: UUID?, eventName: EventName?, from: String?, inboxId: UUID?, messageId: String?, subject: String?, to: [String]?, webhookId: UUID?, webhookName: String?) {
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

}