//
// TestPhoneNumberOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

@objc public class TestPhoneNumberOptions: NSObject, Codable {

    public var message: String

    public init(message: String) {
        self.message = message
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case message
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(message, forKey: .message)
    }



}
