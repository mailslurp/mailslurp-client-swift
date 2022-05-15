//
// EmailPreviewUrls.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

/** URLs for email body */
@objc public class EmailPreviewUrls: NSObject, Codable {

    public var rawSmtpMessageUrl: String
    public var plainHtmlBodyUrl: String

    public init(rawSmtpMessageUrl: String, plainHtmlBodyUrl: String) {
        self.rawSmtpMessageUrl = rawSmtpMessageUrl
        self.plainHtmlBodyUrl = plainHtmlBodyUrl
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case rawSmtpMessageUrl
        case plainHtmlBodyUrl
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(rawSmtpMessageUrl, forKey: .rawSmtpMessageUrl)
        try container.encode(plainHtmlBodyUrl, forKey: .plainHtmlBodyUrl)
    }



}
