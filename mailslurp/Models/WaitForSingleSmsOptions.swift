//
// WaitForSingleSmsOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

@objcMembers public class WaitForSingleSmsOptions: NSObject, Codable, ParameterConvertible {

    public enum SortDirection: String, Sendable, Codable, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }
    public var phoneNumberId: UUID
    public var timeout: Int64
    public var unreadOnly: Bool?
    public var unreadOnlyNum: NSNumber? {
        get {
            return unreadOnly as NSNumber?
        }
    }
    public var before: Date?
    public var since: Date?
    public var sortDirection: SortDirection?
    public var delay: Int64?
    public var delayNum: NSNumber? {
        get {
            return delay as NSNumber?
        }
    }

    public init(phoneNumberId: UUID, timeout: Int64, unreadOnly: Bool? = nil, before: Date? = nil, since: Date? = nil, sortDirection: SortDirection? = nil, delay: Int64? = nil) {
        self.phoneNumberId = phoneNumberId
        self.timeout = timeout
        self.unreadOnly = unreadOnly
        self.before = before
        self.since = since
        self.sortDirection = sortDirection
        self.delay = delay
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case phoneNumberId
        case timeout
        case unreadOnly
        case before
        case since
        case sortDirection
        case delay
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(phoneNumberId, forKey: .phoneNumberId)
        try container.encode(timeout, forKey: .timeout)
        try container.encodeIfPresent(unreadOnly, forKey: .unreadOnly)
        try container.encodeIfPresent(before, forKey: .before)
        try container.encodeIfPresent(since, forKey: .since)
        try container.encodeIfPresent(sortDirection, forKey: .sortDirection)
        try container.encodeIfPresent(delay, forKey: .delay)
    }
}

