//
// VerifyWebhookSignatureOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

@objcMembers public class VerifyWebhookSignatureOptions: NSObject, Codable, ParameterConvertible {

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

