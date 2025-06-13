//
// OptInConsentSendResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

@objcMembers public class OptInConsentSendResult: NSObject, Codable, ParameterConvertible {

    public var sent: Bool

    public init(sent: Bool) {
        self.sent = sent
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case sent
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(sent, forKey: .sent)
    }
}

