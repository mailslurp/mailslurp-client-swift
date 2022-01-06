//
// TestNewInboxRulesetOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

@objc public class TestNewInboxRulesetOptions: NSObject, Codable {

    public var inboxRulesetTestOptions: InboxRulesetTestOptions?
    public var createInboxRulesetOptions: CreateInboxRulesetOptions?

    public init(inboxRulesetTestOptions: InboxRulesetTestOptions? = nil, createInboxRulesetOptions: CreateInboxRulesetOptions? = nil) {
        self.inboxRulesetTestOptions = inboxRulesetTestOptions
        self.createInboxRulesetOptions = createInboxRulesetOptions
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case inboxRulesetTestOptions
        case createInboxRulesetOptions
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(inboxRulesetTestOptions, forKey: .inboxRulesetTestOptions)
        try container.encodeIfPresent(createInboxRulesetOptions, forKey: .createInboxRulesetOptions)
    }



}
