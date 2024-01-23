//
// CheckEmailClientSupportResults.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc public class CheckEmailClientSupportResults: NSObject, Codable, JSONEncodable {

    public var result: EmailFeatureSupportResult

    public init(result: EmailFeatureSupportResult) {
        self.result = result
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case result
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(result, forKey: .result)
    }
}

