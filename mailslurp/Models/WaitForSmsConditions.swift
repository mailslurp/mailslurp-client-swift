//
// WaitForSmsConditions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Conditions to apply to emails that you are waiting for */
@objc public class WaitForSmsConditions: NSObject, Codable, JSONEncodable {

    public enum CountType: String, Codable, CaseIterable {
        case exactly = "EXACTLY"
        case atleast = "ATLEAST"
    }
    public enum SortDirection: String, Codable, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }
    /** ID of phone number to search within and apply conditions to. Essentially filtering the SMS found to give a count. */
    public var phoneNumberId: UUID
    /** Limit results */
    public var limit: Int?
    public var limitNum: NSNumber? {
        get {
            return limit as NSNumber?
        }
    }
    /** Number of results that should match conditions. Either exactly or at least this amount based on the `countType`. If count condition is not met and the timeout has not been reached the `waitFor` method will retry the operation. */
    public var count: Int64
    /** Max time in milliseconds to wait between retries if a `timeout` is specified. */
    public var delayTimeout: Int64?
    public var delayTimeoutNum: NSNumber? {
        get {
            return delayTimeout as NSNumber?
        }
    }
    /** Max time in milliseconds to retry the `waitFor` operation until conditions are met. */
    public var timeout: Int64
    /** Apply conditions only to **unread** SMS. All SMS messages begin with `read=false`. An SMS is marked `read=true` when an `SMS` has been returned to the user at least once. For example you have called `getSms` or `waitForSms` etc., or you have viewed the SMS in the dashboard. */
    public var unreadOnly: Bool?
    public var unreadOnlyNum: NSNumber? {
        get {
            return unreadOnly as NSNumber?
        }
    }
    /** How result size should be compared with the expected size. Exactly or at-least matching result? */
    public var countType: CountType?
    /** Conditions that should be matched for an SMS to qualify for results. Each condition will be applied in order to each SMS within a phone number to filter a result list of matching SMSs you are waiting for. */
    public var matches: [SmsMatchOption]?
    /** Direction to sort matching SMSs by created time */
    public var sortDirection: SortDirection?
    /** ISO Date Time earliest time of SMS to consider. Filter for matching SMSs that were received after this date */
    public var since: Date?
    /** ISO Date Time latest time of SMS to consider. Filter for matching SMSs that were received before this date */
    public var before: Date?

    public init(phoneNumberId: UUID, limit: Int? = nil, count: Int64, delayTimeout: Int64? = nil, timeout: Int64, unreadOnly: Bool? = nil, countType: CountType? = nil, matches: [SmsMatchOption]? = nil, sortDirection: SortDirection? = nil, since: Date? = nil, before: Date? = nil) {
        self.phoneNumberId = phoneNumberId
        self.limit = limit
        self.count = count
        self.delayTimeout = delayTimeout
        self.timeout = timeout
        self.unreadOnly = unreadOnly
        self.countType = countType
        self.matches = matches
        self.sortDirection = sortDirection
        self.since = since
        self.before = before
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case phoneNumberId
        case limit
        case count
        case delayTimeout
        case timeout
        case unreadOnly
        case countType
        case matches
        case sortDirection
        case since
        case before
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(phoneNumberId, forKey: .phoneNumberId)
        try container.encodeIfPresent(limit, forKey: .limit)
        try container.encode(count, forKey: .count)
        try container.encodeIfPresent(delayTimeout, forKey: .delayTimeout)
        try container.encode(timeout, forKey: .timeout)
        try container.encodeIfPresent(unreadOnly, forKey: .unreadOnly)
        try container.encodeIfPresent(countType, forKey: .countType)
        try container.encodeIfPresent(matches, forKey: .matches)
        try container.encodeIfPresent(sortDirection, forKey: .sortDirection)
        try container.encodeIfPresent(since, forKey: .since)
        try container.encodeIfPresent(before, forKey: .before)
    }
}

