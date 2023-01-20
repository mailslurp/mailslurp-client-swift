//
// AliasDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Email alias representation */
@objc public class AliasDto: NSObject, Codable, JSONEncodable {

    public var _id: UUID
    /** The alias's email address for receiving email */
    public var emailAddress: String
    /** The underlying email address that is hidden and will received forwarded email */
    public var maskedEmailAddress: String?
    public var userId: UUID
    /** Inbox that is associated with the alias */
    public var inboxId: UUID
    public var name: String?
    /** If alias will generate response threads or not when email are received by it */
    public var useThreads: Bool?
    public var useThreadsNum: NSNumber? {
        get {
            return useThreads as NSNumber?
        }
    }
    /** Has the alias been verified. You must verify an alias if the masked email address has not yet been verified by your account */
    public var isVerified: Bool
    public var createdAt: Date?
    public var updatedAt: Date?

    public init(_id: UUID, emailAddress: String, maskedEmailAddress: String? = nil, userId: UUID, inboxId: UUID, name: String? = nil, useThreads: Bool? = nil, isVerified: Bool, createdAt: Date? = nil, updatedAt: Date? = nil) {
        self._id = _id
        self.emailAddress = emailAddress
        self.maskedEmailAddress = maskedEmailAddress
        self.userId = userId
        self.inboxId = inboxId
        self.name = name
        self.useThreads = useThreads
        self.isVerified = isVerified
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _id = "id"
        case emailAddress
        case maskedEmailAddress
        case userId
        case inboxId
        case name
        case useThreads
        case isVerified
        case createdAt
        case updatedAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(_id, forKey: ._id)
        try container.encode(emailAddress, forKey: .emailAddress)
        try container.encodeIfPresent(maskedEmailAddress, forKey: .maskedEmailAddress)
        try container.encode(userId, forKey: .userId)
        try container.encode(inboxId, forKey: .inboxId)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(useThreads, forKey: .useThreads)
        try container.encode(isVerified, forKey: .isVerified)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
    }
}

