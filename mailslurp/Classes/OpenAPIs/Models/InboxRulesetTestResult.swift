//
// InboxRulesetTestResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

@objc public class InboxRulesetTestResult: NSObject, Codable {

    public var matches: Bool
    /** Map of inbox ruleset ID to boolean of if target matches */
    public var rulesetMatches: [String: Bool]?

    public init(matches: Bool, rulesetMatches: [String: Bool]? = nil) {
        self.matches = matches
        self.rulesetMatches = rulesetMatches
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case matches
        case rulesetMatches
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(matches, forKey: .matches)
        try container.encodeIfPresent(rulesetMatches, forKey: .rulesetMatches)
    }



}