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

    public var _id: UUID?
    public var from: String?
    public var userId: UUID?
    public var subject: String?
    public var createdAt: Date?
    public var inboxId: UUID?
    public var to: [String]?
    public var attachments: [String]?
    public var bcc: [String]?
    public var cc: [String]?
    public var bodyMD5Hash: String?

    public init(_id: UUID? = nil, from: String? = nil, userId: UUID? = nil, subject: String? = nil, createdAt: Date? = nil, inboxId: UUID? = nil, to: [String]? = nil, attachments: [String]? = nil, bcc: [String]? = nil, cc: [String]? = nil, bodyMD5Hash: String? = nil) {
        self._id = _id
        self.from = from
        self.userId = userId
        self.subject = subject
        self.createdAt = createdAt
        self.inboxId = inboxId
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
        case createdAt
        case inboxId
        case to
        case attachments
        case bcc
        case cc
        case bodyMD5Hash
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(_id, forKey: ._id)
        try container.encodeIfPresent(from, forKey: .from)
        try container.encodeIfPresent(userId, forKey: .userId)
        try container.encodeIfPresent(subject, forKey: .subject)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(inboxId, forKey: .inboxId)
        try container.encodeIfPresent(to, forKey: .to)
        try container.encodeIfPresent(attachments, forKey: .attachments)
        try container.encodeIfPresent(bcc, forKey: .bcc)
        try container.encodeIfPresent(cc, forKey: .cc)
        try container.encodeIfPresent(bodyMD5Hash, forKey: .bodyMD5Hash)
    }



}
