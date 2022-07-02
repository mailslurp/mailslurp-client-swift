//
// InboxRulesetTestOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** Test options for inbox ruleset */
@objc public class InboxRulesetTestOptions: NSObject, Codable {

    public var testTarget: String

    public init(testTarget: String) {
        self.testTarget = testTarget
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case testTarget
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(testTarget, forKey: .testTarget)
    }



}