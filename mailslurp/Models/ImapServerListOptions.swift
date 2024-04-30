//
// ImapServerListOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc public class ImapServerListOptions: NSObject, Codable, JSONEncodable {

    public var uidSet: String?
    public var seqSet: String?

    public init(uidSet: String? = nil, seqSet: String? = nil) {
        self.uidSet = uidSet
        self.seqSet = seqSet
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case uidSet
        case seqSet
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(uidSet, forKey: .uidSet)
        try container.encodeIfPresent(seqSet, forKey: .seqSet)
    }
}

