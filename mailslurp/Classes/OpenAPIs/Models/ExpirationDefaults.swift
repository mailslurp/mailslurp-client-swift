//
// ExpirationDefaults.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

/** Expiration defaults for your account */
@objc public class ExpirationDefaults: NSObject, Codable {

    public var canPermanentInbox: Bool
    public var defaultExpirationMillis: Int64?
    public var defaultExpirationMillisNum: NSNumber? {
        get {
            return defaultExpirationMillis as NSNumber?
        }
    }
    public var defaultExpiresAt: Date?
    public var maxExpirationMillis: Int64?
    public var maxExpirationMillisNum: NSNumber? {
        get {
            return maxExpirationMillis as NSNumber?
        }
    }
    public var nextInboxAllowsPermanent: Bool

    public init(canPermanentInbox: Bool, defaultExpirationMillis: Int64? = nil, defaultExpiresAt: Date? = nil, maxExpirationMillis: Int64? = nil, nextInboxAllowsPermanent: Bool) {
        self.canPermanentInbox = canPermanentInbox
        self.defaultExpirationMillis = defaultExpirationMillis
        self.defaultExpiresAt = defaultExpiresAt
        self.maxExpirationMillis = maxExpirationMillis
        self.nextInboxAllowsPermanent = nextInboxAllowsPermanent
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case canPermanentInbox
        case defaultExpirationMillis
        case defaultExpiresAt
        case maxExpirationMillis
        case nextInboxAllowsPermanent
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(canPermanentInbox, forKey: .canPermanentInbox)
        try container.encodeIfPresent(defaultExpirationMillis, forKey: .defaultExpirationMillis)
        try container.encodeIfPresent(defaultExpiresAt, forKey: .defaultExpiresAt)
        try container.encodeIfPresent(maxExpirationMillis, forKey: .maxExpirationMillis)
        try container.encode(nextInboxAllowsPermanent, forKey: .nextInboxAllowsPermanent)
    }



}
