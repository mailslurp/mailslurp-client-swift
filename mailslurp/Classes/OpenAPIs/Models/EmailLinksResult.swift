//
// EmailLinksResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

/** Links found in HTML */
@objc public class EmailLinksResult: NSObject, Codable {

    public var body: String
    public var links: [String]

    public init(body: String, links: [String]) {
        self.body = body
        self.links = links
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case body
        case links
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(body, forKey: .body)
        try container.encode(links, forKey: .links)
    }



}
