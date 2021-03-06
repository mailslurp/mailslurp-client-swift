//
// MissedEmail.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

@objc public class MissedEmail: NSObject, Codable {

    public var attachmentCount: Int
    public var bcc: [String]
    public var bodyExcerpt: String?
    public var cc: [String]
    public var createdAt: Date
    public var from: String?
    public var _id: UUID?
    public var inboxIds: [UUID]
    public var subject: String?
    public var to: [String]
    public var updatedAt: Date
    public var userId: UUID

    public init(attachmentCount: Int, bcc: [String], bodyExcerpt: String? = nil, cc: [String], createdAt: Date, from: String? = nil, _id: UUID? = nil, inboxIds: [UUID], subject: String? = nil, to: [String], updatedAt: Date, userId: UUID) {
        self.attachmentCount = attachmentCount
        self.bcc = bcc
        self.bodyExcerpt = bodyExcerpt
        self.cc = cc
        self.createdAt = createdAt
        self.from = from
        self._id = _id
        self.inboxIds = inboxIds
        self.subject = subject
        self.to = to
        self.updatedAt = updatedAt
        self.userId = userId
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case attachmentCount
        case bcc
        case bodyExcerpt
        case cc
        case createdAt
        case from
        case _id = "id"
        case inboxIds
        case subject
        case to
        case updatedAt
        case userId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(attachmentCount, forKey: .attachmentCount)
        try container.encode(bcc, forKey: .bcc)
        try container.encodeIfPresent(bodyExcerpt, forKey: .bodyExcerpt)
        try container.encode(cc, forKey: .cc)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(from, forKey: .from)
        try container.encodeIfPresent(_id, forKey: ._id)
        try container.encode(inboxIds, forKey: .inboxIds)
        try container.encodeIfPresent(subject, forKey: .subject)
        try container.encode(to, forKey: .to)
        try container.encode(updatedAt, forKey: .updatedAt)
        try container.encode(userId, forKey: .userId)
    }



}
