//
// ImapServerMailboxResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc public class ImapServerMailboxResult: NSObject, Codable, JSONEncodable {

    public var message: String?
    public var success: Bool

    public init(message: String? = nil, success: Bool) {
        self.message = message
        self.success = success
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case message
        case success
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(message, forKey: .message)
        try container.encode(success, forKey: .success)
    }
}
