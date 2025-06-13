//
// WaitForConditions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Conditions to apply to emails that you are waiting for */
@objcMembers public class WaitForConditions: NSObject, Codable, ParameterConvertible {

    public enum CountType: String, Sendable, Codable, CaseIterable {
        case exactly = "EXACTLY"
        case atleast = "ATLEAST"
    }
    public enum SortDirection: String, Sendable, Codable, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }
    /** ID of inbox to search within and apply conditions to. Essentially filtering the emails found to give a count. */
    public var inboxId: UUID
    /** Number of results that should match conditions. Either exactly or at least this amount based on the `countType`. If count condition is not met and the timeout has not been reached the `waitFor` method will retry the operation. */
    public var count: Int?
    public var countNum: NSNumber? {
        get {
            return count as NSNumber?
        }
    }
    /** Max time in milliseconds to wait between retries if a `timeout` is specified. */
    public var delayTimeout: Int64?
    public var delayTimeoutNum: NSNumber? {
        get {
            return delayTimeout as NSNumber?
        }
    }
    /** Max time in milliseconds to retry the `waitFor` operation until conditions are met. */
    public var timeout: Int64
    /** Apply conditions only to **unread** emails. All emails begin with `read=false`. An email is marked `read=true` when an `EmailDto` representation of it has been returned to the user at least once. For example you have called `getEmail` or `waitForLatestEmail` etc., or you have viewed the email in the dashboard. */
    public var unreadOnly: Bool?
    public var unreadOnlyNum: NSNumber? {
        get {
            return unreadOnly as NSNumber?
        }
    }
    /** How result size should be compared with the expected size. Exactly or at-least matching result? */
    public var countType: CountType?
    /** Conditions that should be matched for an email to qualify for results. Each condition will be applied in order to each email within an inbox to filter a result list of matching emails you are waiting for. */
    public var matches: [MatchOption]?
    /** Direction to sort matching emails by created time */
    public var sortDirection: SortDirection?
    /** ISO Date Time earliest time of email to consider. Filter for matching emails that were received after this date */
    public var since: Date?
    /** ISO Date Time latest time of email to consider. Filter for matching emails that were received before this date */
    public var before: Date?

    public init(inboxId: UUID, count: Int? = nil, delayTimeout: Int64? = nil, timeout: Int64, unreadOnly: Bool? = nil, countType: CountType? = nil, matches: [MatchOption]? = nil, sortDirection: SortDirection? = nil, since: Date? = nil, before: Date? = nil) {
        self.inboxId = inboxId
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
        case inboxId
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
        try container.encode(inboxId, forKey: .inboxId)
        try container.encodeIfPresent(count, forKey: .count)
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

