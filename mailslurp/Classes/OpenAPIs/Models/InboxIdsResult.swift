//
// InboxIdsResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

@objc public class InboxIdsResult: NSObject, Codable {

    public var inboxIds: [UUID]

    public init(inboxIds: [UUID]) {
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
