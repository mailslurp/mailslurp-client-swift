//
// SentEmailProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

/** Collection of items */
@objc public class SentEmailProjection: NSObject, Codable {

    public var _id: UUID
    public var from: String?
    public var userId: UUID
    public var subject: String?
    public var inboxId: UUID
    public var createdAt: Date
    public var to: [String]
    public var attachments: [String]
    public var bcc: [String]
    public var cc: [String]
    public var bodyMD5Hash: String?

    public init(_id: UUID, from: String? = nil, userId: UUID, subject: String? = nil, inboxId: UUID, createdAt: Date, to: [String], attachments: [String], bcc: [String], cc: [String], bodyMD5Hash: String? = nil) {
        self._id = _id
        self.from = from
        self.userId = userId
        self.subject = subject
        self.inboxId = inboxId
        self.createdAt = createdAt
        self.to = to
        self.attachments = attachments
        self.bcc = bcc
        self.cc = cc
        self.bodyMD5Hash = bodyMD5Hash
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _id = "id"
        case from
        case userId
        case subject
        case inboxId
        case createdAt
        case to
        case attachments
        case bcc
        case cc
        case bodyMD5Hash
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(_id, forKey: ._id)
        try container.encodeIfPresent(from, forKey: .from)
        try container.encode(userId, forKey: .userId)
        try container.encodeIfPresent(subject, forKey: .subject)
        try container.encode(inboxId, forKey: .inboxId)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(to, forKey: .to)
        try container.encode(attachments, forKey: .attachments)
        try container.encode(bcc, forKey: .bcc)
        try container.encode(cc, forKey: .cc)
        try container.encodeIfPresent(bodyMD5Hash, forKey: .bodyMD5Hash)
    }



}
