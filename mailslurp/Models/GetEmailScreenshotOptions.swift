//
// GetEmailScreenshotOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Options taking a screenshot capture of a rendered email */
@objc public class GetEmailScreenshotOptions: NSObject, Codable, JSONEncodable {

    /** Window height in pixels */
    public var height: Int?
    public var heightNum: NSNumber? {
        get {
            return height as NSNumber?
        }
    }
    /** Window width in pixels */
    public var width: Int?
    public var widthNum: NSNumber? {
        get {
            return width as NSNumber?
        }
    }

    public init(height: Int? = nil, width: Int? = nil) {
        self.height = height
        self.width = width
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case height
        case width
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(height, forKey: .height)
        try container.encodeIfPresent(width, forKey: .width)
    }
}

