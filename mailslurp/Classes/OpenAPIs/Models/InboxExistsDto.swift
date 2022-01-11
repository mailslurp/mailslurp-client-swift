//
// InboxExistsDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

@objc public class InboxExistsDto: NSObject, Codable {

    public var exists: Bool

    public init(exists: Bool) {
        self.exists = exists
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case exists
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(exists, forKey: .exists)
    }



}
