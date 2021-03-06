//
// InboxForwarderTestResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

@objc public class InboxForwarderTestResult: NSObject, Codable {

    public var doesMatch: Bool
    public var matches: [String: Bool]

    public init(doesMatch: Bool, matches: [String: Bool]) {
        self.doesMatch = doesMatch
        self.matches = matches
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case doesMatch
        case matches
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(doesMatch, forKey: .doesMatch)
        try container.encode(matches, forKey: .matches)
    }



}
