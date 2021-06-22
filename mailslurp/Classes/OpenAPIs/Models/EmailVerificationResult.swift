//
// EmailVerificationResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

/** Email verification result. Valid means email address exists according to response from mail server running at the domian and port given. */
@objc public class EmailVerificationResult: NSObject, Codable {

    public var domainName: String
    public var emailAddress: String
    public var error: String?
    public var isValid: Bool
    public var port: Int

    public init(domainName: String, emailAddress: String, error: String? = nil, isValid: Bool, port: Int) {
        self.domainName = domainName
        self.emailAddress = emailAddress
        self.error = error
        self.isValid = isValid
        self.port = port
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case domainName
        case emailAddress
        case error
        case isValid
        case port
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(domainName, forKey: .domainName)
        try container.encode(emailAddress, forKey: .emailAddress)
        try container.encodeIfPresent(error, forKey: .error)
        try container.encode(isValid, forKey: .isValid)
        try container.encode(port, forKey: .port)
    }



}
