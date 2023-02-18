//
// ThreadProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A thread is a message thread created for a message received by an alias */
@objc public class ThreadProjection: NSObject, Codable, JSONEncodable {

    /** Name of thread */
    public var name: String?
    /** ID of email thread */
    public var _id: UUID
    /** Thread subject */
    public var subject: String?
    /** User ID */
    public var userId: UUID
    /** Inbox ID */
    public var inboxId: UUID
    /** Created at DateTime */
    public var createdAt: Date
    /** Updated at DateTime */
    public var updatedAt: Date
    /** To recipients */
    public var to: [String]
    /** BCC recipients */
    public var bcc: [String]?
    /** CC recipients */
    public var cc: [String]?
    /** Alias ID */
    public var aliasId: UUID

    public init(name: String? = nil, _id: UUID, subject: String? = nil, userId: UUID, inboxId: UUID, createdAt: Date, updatedAt: Date, to: [String], bcc: [String]? = nil, cc: [String]? = nil, aliasId: UUID) {
        self.name = name
        self._id = _id
        self.subject = subject
        self.userId = userId
        self.inboxId = inboxId
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.to = to
        self.bcc = bcc
        self.cc = cc
        self.aliasId = aliasId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case _id = "id"
        case subject
        case userId
        case inboxId
        case createdAt
        case updatedAt
        case to
        case bcc
        case cc
        case aliasId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encode(_id, forKey: ._id)
        try container.encodeIfPresent(subject, forKey: .subject)
        try container.encode(userId, forKey: .userId)
        try container.encode(inboxId, forKey: .inboxId)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(updatedAt, forKey: .updatedAt)
        try container.encode(to, forKey: .to)
        try container.encodeIfPresent(bcc, forKey: .bcc)
        try container.encodeIfPresent(cc, forKey: .cc)
        try container.encode(aliasId, forKey: .aliasId)
    }
}

