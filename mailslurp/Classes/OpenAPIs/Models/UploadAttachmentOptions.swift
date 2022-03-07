//
// UploadAttachmentOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

/** Options for uploading files for attachments. When sending emails with the API that require attachments first upload each attachment. Then use the returned attachment ID in your &#x60;SendEmailOptions&#x60; when sending an email. This way you can use attachments multiple times once they have been uploaded. */
@objc public class UploadAttachmentOptions: NSObject, Codable {

    /** Optional contentType for file. For instance &#x60;application/pdf&#x60; */
    public var contentType: String?
    /** Optional filename to save upload with. Will be the name that is shown in email clients */
    public var filename: String?
    /** Base64 encoded string of file contents. Typically this means reading the bytes or string content of a file and then converting that to a base64 encoded string. For examples of how to do this see https://www.mailslurp.com/guides/base64-file-uploads/ */
    public var base64Contents: String

    public init(contentType: String? = nil, filename: String? = nil, base64Contents: String) {
        self.contentType = contentType
        self.filename = filename
        self.base64Contents = base64Contents
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case contentType
        case filename
        case base64Contents
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(contentType, forKey: .contentType)
        try container.encodeIfPresent(filename, forKey: .filename)
        try container.encode(base64Contents, forKey: .base64Contents)
    }



}
