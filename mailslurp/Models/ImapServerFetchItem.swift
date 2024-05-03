//
// ImapServerFetchItem.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** IMAP fetch content in raw format */
@objc public class ImapServerFetchItem: NSObject, Codable, JSONEncodable {

    /** Content of the email */
    public var content: String
    /** ID of the email */
    public var _id: UUID
    /** UID of the email */
    public var uid: Int64
    /** Sequence number of the email */
    public var seqNum: Int64
    /** Read status of the email */
    public var read: Bool

    public init(content: String, _id: UUID, uid: Int64, seqNum: Int64, read: Bool) {
        self.content = content
        self._id = _id
        self.uid = uid
        self.seqNum = seqNum
        self.read = read
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case content
        case _id = "id"
        case uid
        case seqNum
        case read
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(content, forKey: .content)
        try container.encode(_id, forKey: ._id)
        try container.encode(uid, forKey: .uid)
        try container.encode(seqNum, forKey: .seqNum)
        try container.encode(read, forKey: .read)
    }
}
