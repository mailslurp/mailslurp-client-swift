//
// WebhookProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** Representation of a webhook */
public struct WebhookProjection: Codable, Hashable {

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
    public var name: String?
    public var id: UUID
    public var url: String
    public var inboxId: UUID?
    public var eventName: EventName?
    public var createdAt: Date
    public var updatedAt: Date

    public init(name: String? = nil, id: UUID, url: String, inboxId: UUID? = nil, eventName: EventName? = nil, createdAt: Date, updatedAt: Date) {
        self.name = name
        self.id = id
        self.url = url
        self.inboxId = inboxId
        self.eventName = eventName
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case id
        case url
        case inboxId
        case eventName
        case createdAt
        case updatedAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encode(id, forKey: .id)
        try container.encode(url, forKey: .url)
        try container.encodeIfPresent(inboxId, forKey: .inboxId)
        try container.encodeIfPresent(eventName, forKey: .eventName)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(updatedAt, forKey: .updatedAt)
    }



}
