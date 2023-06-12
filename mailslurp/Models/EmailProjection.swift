//
// EmailProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A compact representation of a full email. Used in list endpoints to keep response sizes low. Body and attachments are not included. To get all fields of the email use the `getEmail` method with the email projection&#39;s ID. See `EmailDto` for documentation on projection properties. */
@objc public class EmailProjection: NSObject, Codable, JSONEncodable {

    public var _id: UUID
    public var from: String?
    public var subject: String?
    public var inboxId: UUID
    public var attachments: [String]?
    public var createdAt: Date
    public var to: [String]
    public var bcc: [String]?
    public var cc: [String]?
    public var read: Bool
    public var domainId: UUID?
    public var bodyExcerpt: String?
    public var teamAccess: Bool
    public var bodyMD5Hash: String?

    public init(_id: UUID, from: String? = nil, subject: String? = nil, inboxId: UUID, attachments: [String]? = nil, createdAt: Date, to: [String], bcc: [String]? = nil, cc: [String]? = nil, read: Bool, domainId: UUID? = nil, bodyExcerpt: String? = nil, teamAccess: Bool, bodyMD5Hash: String? = nil) {
        self._id = _id
        self.from = from
        self.subject = subject
        self.inboxId = inboxId
        self.attachments = attachments
        self.createdAt = createdAt
        self.to = to
        self.bcc = bcc
        self.cc = cc
        self.read = read
        self.domainId = domainId
        self.bodyExcerpt = bodyExcerpt
        self.teamAccess = teamAccess
        self.bodyMD5Hash = bodyMD5Hash
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _id = "id"
        case from
        case subject
        case inboxId
        case attachments
        case createdAt
        case to
        case bcc
        case cc
        case read
        case domainId
        case bodyExcerpt
        case teamAccess
        case bodyMD5Hash
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(_id, forKey: ._id)
        try container.encodeIfPresent(from, forKey: .from)
        try container.encodeIfPresent(subject, forKey: .subject)
        try container.encode(inboxId, forKey: .inboxId)
        try container.encodeIfPresent(attachments, forKey: .attachments)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(to, forKey: .to)
        try container.encodeIfPresent(bcc, forKey: .bcc)
        try container.encodeIfPresent(cc, forKey: .cc)
        try container.encode(read, forKey: .read)
        try container.encodeIfPresent(domainId, forKey: .domainId)
        try container.encodeIfPresent(bodyExcerpt, forKey: .bodyExcerpt)
        try container.encode(teamAccess, forKey: .teamAccess)
        try container.encodeIfPresent(bodyMD5Hash, forKey: .bodyMD5Hash)
    }
}

