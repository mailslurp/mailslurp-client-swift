//
// GravatarUrl.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** User image */
@objc public class GravatarUrl: NSObject, Codable, JSONEncodable {

    public var url: String
    public var _hash: String

    public init(url: String, _hash: String) {
        self.url = url
        self._hash = _hash
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case url
        case _hash = "hash"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(url, forKey: .url)
        try container.encode(_hash, forKey: ._hash)
    }
}

