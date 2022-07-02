//
// EmailHtmlDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct EmailHtmlDto: Codable, Hashable {

    public var subject: String?
    public var body: String?

    public init(subject: String? = nil, body: String? = nil) {
        self.subject = subject
        self.body = body
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case subject
        case body
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(subject, forKey: .subject)
        try container.encodeIfPresent(body, forKey: .body)
    }



}
