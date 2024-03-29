//
// VerifyWebhookSignatureOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc public class VerifyWebhookSignatureOptions: NSObject, Codable, JSONEncodable {

    public var messageId: String
    public var signature: String

    public init(messageId: String, signature: String) {
        self.messageId = messageId
        self.signature = signature
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case messageId
        case signature
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(messageId, forKey: .messageId)
        try container.encode(signature, forKey: .signature)
    }
}

