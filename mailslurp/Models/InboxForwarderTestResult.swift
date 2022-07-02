//
// InboxForwarderTestResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** Results of inbox forwarder test */
@objc public class InboxForwarderTestResult: NSObject, Codable {

    public var matches: [String: Bool]
    public var doesMatch: Bool

    public init(matches: [String: Bool], doesMatch: Bool) {
        self.matches = matches
        self.doesMatch = doesMatch
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case matches
        case doesMatch
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(matches, forKey: .matches)
        try container.encode(doesMatch, forKey: .doesMatch)
    }



}