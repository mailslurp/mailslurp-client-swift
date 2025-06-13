//
// SendEmailBodyPart.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Email body content parts for multipart mime message. Will override body. */
@objcMembers public class SendEmailBodyPart: NSObject, Codable, ParameterConvertible {

    public var contentType: String
    public var contentBody: String

    public init(contentType: String, contentBody: String) {
        self.contentType = contentType
        self.contentBody = contentBody
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case contentType
        case contentBody
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(contentType, forKey: .contentType)
        try container.encode(contentBody, forKey: .contentBody)
    }
}

