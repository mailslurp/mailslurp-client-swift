//
// GravatarUrl.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

@objc public class GravatarUrl: NSObject, Codable {

    public var _hash: String
    public var url: String

    public init(_hash: String, url: String) {
        self._hash = _hash
        self.url = url
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _hash = "hash"
        case url
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(_hash, forKey: ._hash)
        try container.encode(url, forKey: .url)
    }



}
