//
// TestInboxRulesetReceivingOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Test options for inbox ruleset receiving test */
@objc public class TestInboxRulesetReceivingOptions: NSObject, Codable, JSONEncodable {

    public var inboxId: UUID
    public var fromSender: String

    public init(inboxId: UUID, fromSender: String) {
        self.inboxId = inboxId
        self.fromSender = fromSender
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case inboxId
        case fromSender
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(inboxId, forKey: .inboxId)
        try container.encode(fromSender, forKey: .fromSender)
    }
}
