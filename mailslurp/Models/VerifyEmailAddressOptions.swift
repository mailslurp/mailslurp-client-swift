//
// VerifyEmailAddressOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** Options for verifying that an email address exists at a remote mail server. */
@objc public class VerifyEmailAddressOptions: NSObject, Codable {

    public var mailServerDomain: String?
    public var emailAddress: String
    public var senderEmailAddress: String?
    public var port: Int?
    public var portNum: NSNumber? {
        get {
            return port as NSNumber?
        }
    }

    public init(mailServerDomain: String? = nil, emailAddress: String, senderEmailAddress: String? = nil, port: Int? = nil) {
        self.mailServerDomain = mailServerDomain
        self.emailAddress = emailAddress
        self.senderEmailAddress = senderEmailAddress
        self.port = port
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case mailServerDomain
        case emailAddress
        case senderEmailAddress
        case port
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(mailServerDomain, forKey: .mailServerDomain)
        try container.encode(emailAddress, forKey: .emailAddress)
        try container.encodeIfPresent(senderEmailAddress, forKey: .senderEmailAddress)
        try container.encodeIfPresent(port, forKey: .port)
    }



}