//
// TestNewInboxForwarderOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

@objc public class TestNewInboxForwarderOptions: NSObject, Codable {

    public var inboxForwarderTestOptions: InboxForwarderTestOptions
    public var createInboxForwarderOptions: CreateInboxForwarderOptions

    public init(inboxForwarderTestOptions: InboxForwarderTestOptions, createInboxForwarderOptions: CreateInboxForwarderOptions) {
        self.inboxForwarderTestOptions = inboxForwarderTestOptions
        self.createInboxForwarderOptions = createInboxForwarderOptions
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case inboxForwarderTestOptions
        case createInboxForwarderOptions
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(inboxForwarderTestOptions, forKey: .inboxForwarderTestOptions)
        try container.encode(createInboxForwarderOptions, forKey: .createInboxForwarderOptions)
    }



}
