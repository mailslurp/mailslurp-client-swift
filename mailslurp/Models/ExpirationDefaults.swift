//
// ExpirationDefaults.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** Expiration defaults for your account */
public struct ExpirationDefaults: Codable, Hashable {

    public var defaultExpirationMillis: Int64?
    public var maxExpirationMillis: Int64?
    public var defaultExpiresAt: Date?
    public var canPermanentInbox: Bool
    public var nextInboxAllowsPermanent: Bool

    public init(defaultExpirationMillis: Int64? = nil, maxExpirationMillis: Int64? = nil, defaultExpiresAt: Date? = nil, canPermanentInbox: Bool, nextInboxAllowsPermanent: Bool) {
        self.defaultExpirationMillis = defaultExpirationMillis
        self.maxExpirationMillis = maxExpirationMillis
        self.defaultExpiresAt = defaultExpiresAt
        self.canPermanentInbox = canPermanentInbox
        self.nextInboxAllowsPermanent = nextInboxAllowsPermanent
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case defaultExpirationMillis
        case maxExpirationMillis
        case defaultExpiresAt
        case canPermanentInbox
        case nextInboxAllowsPermanent
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(defaultExpirationMillis, forKey: .defaultExpirationMillis)
        try container.encodeIfPresent(maxExpirationMillis, forKey: .maxExpirationMillis)
        try container.encodeIfPresent(defaultExpiresAt, forKey: .defaultExpiresAt)
        try container.encode(canPermanentInbox, forKey: .canPermanentInbox)
        try container.encode(nextInboxAllowsPermanent, forKey: .nextInboxAllowsPermanent)
    }



}
