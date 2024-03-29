//
// InboxIdsResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** List of inbox IDs and email addresses */
@objc public class InboxIdsResult: NSObject, Codable, JSONEncodable {

    public var inboxIds: [InboxIdItem]

    public init(inboxIds: [InboxIdItem]) {
        self.inboxIds = inboxIds
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case inboxIds
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(inboxIds, forKey: .inboxIds)
    }
}

