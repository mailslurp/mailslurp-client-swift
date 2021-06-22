//
// AttachmentMetaData.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** Meta data associated with an attachment. Attachments are stored as byte blobs so the meta data is stored separately. */
@objc public class AttachmentMetaData: NSObject, Codable {

    /** Size of attachment in bytes */
    public var contentLength: Int64?
    public var contentLengthNum: NSNumber? {
        get {
            return contentLength as NSNumber?
        }
    }
    /** Content type of attachment such as &#x60;image/png&#x60; */
    public var contentType: String?
    /** ID of attachment */
    public var _id: String?
    /** Name of attachment if given */
    public var name: String?

    public init(contentLength: Int64? = nil, contentType: String? = nil, _id: String? = nil, name: String? = nil) {
        self.contentLength = contentLength
        self.contentType = contentType
        self._id = _id
        self.name = name
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case contentLength
        case contentType
        case _id = "id"
        case name
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(contentLength, forKey: .contentLength)
        try container.encodeIfPresent(contentType, forKey: .contentType)
        try container.encodeIfPresent(_id, forKey: ._id)
        try container.encodeIfPresent(name, forKey: .name)
    }



}
