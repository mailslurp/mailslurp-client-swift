//
// ImapMailboxStatus.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc public class ImapMailboxStatus: NSObject, Codable, JSONEncodable {

    /** The mailbox name. */
    public var name: String
    /** True if the mailbox is open in read-only mode. */
    public var readOnly: Bool
    /** Results map */
    public var items: AnyCodable?
    /** The mailbox flags. */
    public var flags: [String]?
    /** The mailbox permanent flags. */
    public var permanentFlags: [String]?
    /** The sequence number of the first unseen message in the mailbox. */
    public var unseenSeqNum: Int64
    /** The number of messages in this mailbox. */
    public var messages: Int
    /** The number of messages not seen since the last time the mailbox was opened. */
    public var recent: Int
    /** The number of unread messages. */
    public var unseen: Int
    /** The next UID. */
    public var uidNext: Int64
    /** Together with a UID, it is a unique identifier for a message. Must be greater than or equal to 1. */
    public var uidValidity: Int
    /** Per-mailbox limit of message size. Set only if server supports the APPENDLIMIT extension */
    public var appendLimit: Int?
    public var appendLimitNum: NSNumber? {
        get {
            return appendLimit as NSNumber?
        }
    }

    public init(name: String, readOnly: Bool, items: AnyCodable?, flags: [String]?, permanentFlags: [String]?, unseenSeqNum: Int64, messages: Int, recent: Int, unseen: Int, uidNext: Int64, uidValidity: Int, appendLimit: Int? = nil) {
        self.name = name
        self.readOnly = readOnly
        self.items = items
        self.flags = flags
        self.permanentFlags = permanentFlags
        self.unseenSeqNum = unseenSeqNum
        self.messages = messages
        self.recent = recent
        self.unseen = unseen
        self.uidNext = uidNext
        self.uidValidity = uidValidity
        self.appendLimit = appendLimit
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case readOnly
        case items
        case flags
        case permanentFlags
        case unseenSeqNum
        case messages
        case recent
        case unseen
        case uidNext
        case uidValidity
        case appendLimit
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(readOnly, forKey: .readOnly)
        try container.encode(items, forKey: .items)
        try container.encode(flags, forKey: .flags)
        try container.encode(permanentFlags, forKey: .permanentFlags)
        try container.encode(unseenSeqNum, forKey: .unseenSeqNum)
        try container.encode(messages, forKey: .messages)
        try container.encode(recent, forKey: .recent)
        try container.encode(unseen, forKey: .unseen)
        try container.encode(uidNext, forKey: .uidNext)
        try container.encode(uidValidity, forKey: .uidValidity)
        try container.encodeIfPresent(appendLimit, forKey: .appendLimit)
    }
}
