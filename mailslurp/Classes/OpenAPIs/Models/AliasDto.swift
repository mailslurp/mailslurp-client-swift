//
// AliasDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Email alias representation */
@objc public class AliasDto: NSObject, Codable {

    public var createdAt: Date?
    /** The alias&#39;s email address for receiving email */
    public var emailAddress: String?
    public var _id: UUID
    /** Inbox that is associated with the alias */
    public var inboxId: UUID?
    /** Has the alias been verified. You must verify an alias if the masked email address has not yet been verified by your account */
    public var isVerified: Bool?
    public var isVerifiedNum: NSNumber? {
        get {
            return isVerified as NSNumber?
        }
    }
    /** The underlying email address that is hidden and will received forwarded email */
    public var maskedEmailAddress: String?
    public var name: String?
    public var updatedAt: Date?
    /** If alias will generate response threads or not when email are received by it */
    public var useThreads: Bool?
    public var useThreadsNum: NSNumber? {
        get {
            return useThreads as NSNumber?
        }
    }
    public var userId: UUID

    public init(createdAt: Date? = nil, emailAddress: String? = nil, _id: UUID, inboxId: UUID? = nil, isVerified: Bool? = nil, maskedEmailAddress: String? = nil, name: String? = nil, updatedAt: Date? = nil, useThreads: Bool? = nil, userId: UUID) {
        self.createdAt = createdAt
        self.emailAddress = emailAddress
        self._id = _id
        self.inboxId = inboxId
        self.isVerified = isVerified
        self.maskedEmailAddress = maskedEmailAddress
        self.name = name
        self.updatedAt = updatedAt
        self.useThreads = useThreads
        self.userId = userId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case createdAt
        case emailAddress
        case _id = "id"
        case inboxId
        case isVerified
        case maskedEmailAddress
        case name
        case updatedAt
        case useThreads
        case userId
    }

}
