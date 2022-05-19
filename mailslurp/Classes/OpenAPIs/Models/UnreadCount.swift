//
// UnreadCount.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

/** Number of unread emails */
@objc public class UnreadCount: NSObject, Codable {

    public var count: Int64

    public init(count: Int64) {
        self.count = count
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case count
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(count, forKey: .count)
    }



}
