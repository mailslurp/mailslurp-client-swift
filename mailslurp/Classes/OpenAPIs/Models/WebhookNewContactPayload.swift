//
// WebhookNewContactPayload.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

/** NEW_CONTACT webhook payload. Sent to your webhook url endpoint via HTTP POST when an email is received by the inbox that your webhook is attached to that contains a recipient that has not been saved as a contact. */
@objc public class WebhookNewContactPayload: NSObject, Codable {

    public enum EventName: String, Codable, CaseIterable {
        case emailReceived = "EMAIL_RECEIVED"
        case newEmail = "NEW_EMAIL"
        case newContact = "NEW_CONTACT"
        case newAttachment = "NEW_ATTACHMENT"
        case emailOpened = "EMAIL_OPENED"
        case emailRead = "EMAIL_READ"
        case bounce = "BOUNCE"
        case bounceRecipient = "BOUNCE_RECIPIENT"
    }
    /** Idempotent message ID. Store this ID locally or in a database to prevent message duplication. */
    public var messageId: String
    /** ID of webhook entity being triggered */
    public var webhookId: UUID
    /** Name of the webhook being triggered */
    public var webhookName: String?
    /** Name of the event type webhook is being triggered for. */
    public var eventName: EventName
    public var contactId: UUID
    public var groupId: UUID?
    public var firstName: String?
    public var lastName: String?
    public var company: String?
    public var primaryEmailAddress: String?
    public var emailAddresses: [String]
    public var tags: [String]
    public var metaData: AnyCodable?
    public var optOut: Bool?
    public var optOutNum: NSNumber? {
        get {
            return optOut as NSNumber?
        }
    }
    public var createdAt: Date

    public init(messageId: String, webhookId: UUID, webhookName: String? = nil, eventName: EventName, contactId: UUID, groupId: UUID? = nil, firstName: String? = nil, lastName: String? = nil, company: String? = nil, primaryEmailAddress: String? = nil, emailAddresses: [String], tags: [String], metaData: AnyCodable? = nil, optOut: Bool? = nil, createdAt: Date) {
        self.messageId = messageId
        self.webhookId = webhookId
        self.webhookName = webhookName
        self.eventName = eventName
        self.contactId = contactId
        self.groupId = groupId
        self.firstName = firstName
        self.lastName = lastName
        self.company = company
        self.primaryEmailAddress = primaryEmailAddress
        self.emailAddresses = emailAddresses
        self.tags = tags
        self.metaData = metaData
        self.optOut = optOut
        self.createdAt = createdAt
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case messageId
        case webhookId
        case webhookName
        case eventName
        case contactId
        case groupId
        case firstName
        case lastName
        case company
        case primaryEmailAddress
        case emailAddresses
        case tags
        case metaData
        case optOut
        case createdAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(messageId, forKey: .messageId)
        try container.encode(webhookId, forKey: .webhookId)
        try container.encodeIfPresent(webhookName, forKey: .webhookName)
        try container.encode(eventName, forKey: .eventName)
        try container.encode(contactId, forKey: .contactId)
        try container.encodeIfPresent(groupId, forKey: .groupId)
        try container.encodeIfPresent(firstName, forKey: .firstName)
        try container.encodeIfPresent(lastName, forKey: .lastName)
        try container.encodeIfPresent(company, forKey: .company)
        try container.encodeIfPresent(primaryEmailAddress, forKey: .primaryEmailAddress)
        try container.encode(emailAddresses, forKey: .emailAddresses)
        try container.encode(tags, forKey: .tags)
        try container.encodeIfPresent(metaData, forKey: .metaData)
        try container.encodeIfPresent(optOut, forKey: .optOut)
        try container.encode(createdAt, forKey: .createdAt)
    }



}
