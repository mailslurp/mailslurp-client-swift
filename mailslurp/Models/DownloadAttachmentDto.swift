//
// DownloadAttachmentDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** Content of attachment */
@objc public class DownloadAttachmentDto: NSObject, Codable {

    /** Base64 encoded string of attachment bytes. Decode the base64 encoded string to get the raw contents. If the file has a content type such as `text/html` you can read the contents directly by converting it to string using `utf-8` encoding. */
    public var base64FileContents: String
    /** Content type of attachment. Examples are `image/png`, `application/msword`, `text/csv` etc. */
    public var contentType: String
    /** Size in bytes of attachment content */
    public var sizeBytes: Int64

    public init(base64FileContents: String, contentType: String, sizeBytes: Int64) {
        self.base64FileContents = base64FileContents
        self.contentType = contentType
        self.sizeBytes = sizeBytes
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case base64FileContents
        case contentType
        case sizeBytes
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(base64FileContents, forKey: .base64FileContents)
        try container.encode(contentType, forKey: .contentType)
        try container.encode(sizeBytes, forKey: .sizeBytes)
    }



}
