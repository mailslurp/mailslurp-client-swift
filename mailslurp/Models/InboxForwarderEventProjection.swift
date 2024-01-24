//
// InboxForwarderEventProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Inbox forwarder event */
@objc public class InboxForwarderEventProjection: NSObject, Codable, JSONEncodable {

    public enum Status: String, Codable, CaseIterable {
        case success = "SUCCESS"
        case failure = "FAILURE"
    }
    public var emailId: UUID?
    public var inboxId: UUID?
    public var userId: UUID?
    public var forwarderId: UUID?
    public var createdAt: Date
    public var message: String?
    public var _id: UUID?
    public var status: Status?

    public init(emailId: UUID? = nil, inboxId: UUID? = nil, userId: UUID? = nil, forwarderId: UUID? = nil, createdAt: Date, message: String? = nil, _id: UUID? = nil, status: Status? = nil) {
        self.emailId = emailId
        self.inboxId = inboxId
        self.userId = userId
        self.forwarderId = forwarderId
        self.createdAt = createdAt
        self.message = message
        self._id = _id
        self.status = status
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case emailId
        case inboxId
        case userId
        case forwarderId
        case createdAt
        case message
        case _id = "id"
        case status
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(emailId, forKey: .emailId)
        try container.encodeIfPresent(inboxId, forKey: .inboxId)
        try container.encodeIfPresent(userId, forKey: .userId)
        try container.encodeIfPresent(forwarderId, forKey: .forwarderId)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(message, forKey: .message)
        try container.encodeIfPresent(_id, forKey: ._id)
        try container.encodeIfPresent(status, forKey: .status)
    }
}

