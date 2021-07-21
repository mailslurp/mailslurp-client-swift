//
// SentEmailProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

@objc public class SentEmailProjection: NSObject, Codable {

    public var attachments: [String]
    public var bcc: [String]
    public var bodyMD5Hash: String?
    public var cc: [String]
    public var createdAt: Date
    public var from: String?
    public var _id: UUID
    public var inboxId: UUID
    public var subject: String?
    public var to: [String]
    public var userId: UUID

    public init(attachments: [String], bcc: [String], bodyMD5Hash: String? = nil, cc: [String], createdAt: Date, from: String? = nil, _id: UUID, inboxId: UUID, subject: String? = nil, to: [String], userId: UUID) {
        self.attachments = attachments
        self.bcc = bcc
        self.bodyMD5Hash = bodyMD5Hash
        self.cc = cc
        self.createdAt = createdAt
        self.from = from
        self._id = _id
        self.inboxId = inboxId
        self.subject = subject
        self.to = to
        self.userId = userId
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case attachments
        case bcc
        case bodyMD5Hash
        case cc
        case createdAt
        case from
        case _id = "id"
        case inboxId
        case subject
        case to
        case userId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(attachments, forKey: .attachments)
        try container.encode(bcc, forKey: .bcc)
        try container.encodeIfPresent(bodyMD5Hash, forKey: .bodyMD5Hash)
        try container.encode(cc, forKey: .cc)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(from, forKey: .from)
        try container.encode(_id, forKey: ._id)
        try container.encode(inboxId, forKey: .inboxId)
        try container.encodeIfPresent(subject, forKey: .subject)
        try container.encode(to, forKey: .to)
        try container.encode(userId, forKey: .userId)
    }



}
