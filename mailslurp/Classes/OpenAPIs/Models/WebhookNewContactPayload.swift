//
// WebhookNewContactPayload.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** NEW_CONTACT webhook payload. Sent to your webhook url endpoint via HTTP POST when an email is received by the inbox that your webhook is attached to that contains a recipient that has not been saved as a contact. */
@objc public class WebhookNewContactPayload: NSObject, Codable {

    public enum EventName: String, Codable, CaseIterable {
        case emailReceived = "EMAIL_RECEIVED"
        case newEmail = "NEW_EMAIL"
        case newContact = "NEW_CONTACT"
        case newAttachment = "NEW_ATTACHMENT"
    }
    public var company: String?
    public var contactId: UUID
    public var createdAt: Date
    public var emailAddresses: [String]
    /** Name of the event type webhook is being triggered for. */
    public var eventName: EventName?
    public var firstName: String?
    public var groupId: UUID?
    public var lastName: String?
    /** Idempotent message ID. Store this ID locally or in a database to prevent message duplication. */
    public var messageId: String?
    public var metaData: Any?
    public var optOut: Bool?
    public var optOutNum: NSNumber? {
        get {
            return optOut as NSNumber?
        }
    }
    public var primaryEmailAddress: String?
    public var tags: [String]
    /** ID of webhook entity being triggered */
    public var webhookId: UUID?
    /** Name of the webhook being triggered */
    public var webhookName: String?

    public init(company: String? = nil, contactId: UUID, createdAt: Date, emailAddresses: [String], eventName: EventName? = nil, firstName: String? = nil, groupId: UUID? = nil, lastName: String? = nil, messageId: String? = nil, metaData: Any? = nil, optOut: Bool? = nil, primaryEmailAddress: String? = nil, tags: [String], webhookId: UUID? = nil, webhookName: String? = nil) {
        self.company = company
        self.contactId = contactId
        self.createdAt = createdAt
        self.emailAddresses = emailAddresses
        self.eventName = eventName
        self.firstName = firstName
        self.groupId = groupId
        self.lastName = lastName
        self.messageId = messageId
        self.metaData = metaData
        self.optOut = optOut
        self.primaryEmailAddress = primaryEmailAddress
        self.tags = tags
        self.webhookId = webhookId
        self.webhookName = webhookName
    }

}
