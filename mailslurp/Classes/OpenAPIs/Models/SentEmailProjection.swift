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
    public var createdAt: Date
    public var inboxId: UUID
    public var attachments: [String]
    public var to: [String]
    public var bcc: [String]
    public var cc: [String]
    public var bodyMD5Hash: String?
    public var virtualSend: Bool?
    public var virtualSendNum: NSNumber? {
        get {
            return virtualSend as NSNumber?
        }
    }

    public init(_id: UUID, from: String? = nil, userId: UUID, subject: String? = nil, createdAt: Date, inboxId: UUID, attachments: [String], to: [String], bcc: [String], cc: [String], bodyMD5Hash: String? = nil, virtualSend: Bool? = nil) {
        self._id = _id
        self.from = from
        self.userId = userId
        self.subject = subject
        self.createdAt = createdAt
        self.inboxId = inboxId
        self.attachments = attachments
        self.to = to
        self.bcc = bcc
        self.cc = cc
        self.bodyMD5Hash = bodyMD5Hash
        self.virtualSend = virtualSend
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _id = "id"
        case from
        case userId
        case subject
        case createdAt
        case inboxId
        case attachments
        case to
        case bcc
        case cc
        case bodyMD5Hash
        case virtualSend
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(_id, forKey: ._id)
        try container.encodeIfPresent(from, forKey: .from)
        try container.encode(userId, forKey: .userId)
        try container.encodeIfPresent(subject, forKey: .subject)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(inboxId, forKey: .inboxId)
        try container.encode(attachments, forKey: .attachments)
        try container.encode(to, forKey: .to)
        try container.encode(bcc, forKey: .bcc)
        try container.encode(cc, forKey: .cc)
        try container.encodeIfPresent(bodyMD5Hash, forKey: .bodyMD5Hash)
        try container.encodeIfPresent(virtualSend, forKey: .virtualSend)
    }



}
