//
// AttachmentMetaData.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Meta data associated with an attachment. Attachments are stored as byte blobs so the meta data is stored separately. */
@objc public class AttachmentMetaData: NSObject, Codable, JSONEncodable {

    /** Name of attachment if given */
    public var name: String
    /** Content type of attachment such as `image/png` */
    public var contentType: String
    /** Size of attachment in bytes */
    public var contentLength: Int64
    /** ID of attachment. Can be used to with attachment controller endpoints to download attachment or with sending methods to attach to an email. */
    public var _id: String
    /** CID of attachment */
    public var contentId: String?

    public init(name: String, contentType: String, contentLength: Int64, _id: String, contentId: String? = nil) {
        self.name = name
        self.contentType = contentType
        self.contentLength = contentLength
        self._id = _id
        self.contentId = contentId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case contentType
        case contentLength
        case _id = "id"
        case contentId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(contentType, forKey: .contentType)
        try container.encode(contentLength, forKey: .contentLength)
        try container.encode(_id, forKey: ._id)
        try container.encodeIfPresent(contentId, forKey: .contentId)
    }
}

