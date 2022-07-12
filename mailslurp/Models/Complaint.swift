//
// Complaint.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

@objc public class Complaint: NSObject, Codable {

    public var _id: UUID
    public var userId: UUID?
    public var eventType: String?
    public var mailSource: String?
    public var mailMessageId: String?
    public var complaintRecipient: String
    public var createdAt: Date
    public var updatedAt: Date

    public init(_id: UUID, userId: UUID? = nil, eventType: String? = nil, mailSource: String? = nil, mailMessageId: String? = nil, complaintRecipient: String, createdAt: Date, updatedAt: Date) {
        self._id = _id
        self.userId = userId
        self.eventType = eventType
        self.mailSource = mailSource
        self.mailMessageId = mailMessageId
        self.complaintRecipient = complaintRecipient
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _id = "id"
        case userId
        case eventType
        case mailSource
        case mailMessageId
        case complaintRecipient
        case createdAt
        case updatedAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(_id, forKey: ._id)
        try container.encodeIfPresent(userId, forKey: .userId)
        try container.encodeIfPresent(eventType, forKey: .eventType)
        try container.encodeIfPresent(mailSource, forKey: .mailSource)
        try container.encodeIfPresent(mailMessageId, forKey: .mailMessageId)
        try container.encode(complaintRecipient, forKey: .complaintRecipient)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(updatedAt, forKey: .updatedAt)
    }



}