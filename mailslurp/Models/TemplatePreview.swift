//
// TemplatePreview.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc public class TemplatePreview: NSObject, Codable, JSONEncodable {

    public var preview: String

    public init(preview: String) {
        self.preview = preview
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case preview
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(preview, forKey: .preview)
    }
}

