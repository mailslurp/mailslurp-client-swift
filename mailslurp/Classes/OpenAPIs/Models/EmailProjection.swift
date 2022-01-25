//
// EmailProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

/** A compact representation of a full email. Used in list endpoints to keep response sizes low. Body and attachments are not included. To get all fields of the email use the &#x60;getEmail&#x60; method with the email projection&#39;s ID. See &#x60;EmailDto&#x60; for documentation on projection properties. */
@objc public class EmailProjection: NSObject, Codable {

    public var _id: UUID
    public var from: String?
    public var subject: String?
    public var inboxId: UUID
    public var to: [String]
    public var attachments: [String]?
    public var bcc: [String]?
    public var cc: [String]?
    public var createdAt: Date
    public var teamAccess: Bool?
    public var teamAccessNum: NSNumber? {
        get {
            return teamAccess as NSNumber?
        }
    }
    public var read: Bool?
    public var readNum: NSNumber? {
        get {
            return read as NSNumber?
        }
    }
    public var bodyMD5Hash: String?
    public var bodyExcerpt: String?

    public init(_id: UUID, from: String? = nil, subject: String? = nil, inboxId: UUID, to: [String], attachments: [String]? = nil, bcc: [String]? = nil, cc: [String]? = nil, createdAt: Date, teamAccess: Bool? = nil, read: Bool? = nil, bodyMD5Hash: String? = nil, bodyExcerpt: String? = nil) {
        self._id = _id
        self.from = from
        self.subject = subject
        self.inboxId = inboxId
        self.to = to
        self.attachments = attachments
        self.bcc = bcc
        self.cc = cc
        self.createdAt = createdAt
        self.teamAccess = teamAccess
        self.read = read
        self.bodyMD5Hash = bodyMD5Hash
        self.bodyExcerpt = bodyExcerpt
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _id = "id"
        case from
        case subject
        case inboxId
        case to
        case attachments
        case bcc
        case cc
        case createdAt
        case teamAccess
        case read
        case bodyMD5Hash
        case bodyExcerpt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(_id, forKey: ._id)
        try container.encodeIfPresent(from, forKey: .from)
        try container.encodeIfPresent(subject, forKey: .subject)
        try container.encode(inboxId, forKey: .inboxId)
        try container.encode(to, forKey: .to)
        try container.encodeIfPresent(attachments, forKey: .attachments)
        try container.encodeIfPresent(bcc, forKey: .bcc)
        try container.encodeIfPresent(cc, forKey: .cc)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(teamAccess, forKey: .teamAccess)
        try container.encodeIfPresent(read, forKey: .read)
        try container.encodeIfPresent(bodyMD5Hash, forKey: .bodyMD5Hash)
        try container.encodeIfPresent(bodyExcerpt, forKey: .bodyExcerpt)
    }



}
