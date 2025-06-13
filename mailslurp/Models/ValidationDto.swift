//
// ValidationDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Response object for email validation operation */
@objcMembers public class ValidationDto: NSObject, Codable, ParameterConvertible {

    /** ID of the email validated */
    public var emailId: UUID
    public var html: HTMLValidationResult

    public init(emailId: UUID, html: HTMLValidationResult) {
        self.emailId = emailId
        self.html = html
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case emailId
        case html
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(emailId, forKey: .emailId)
        try container.encode(html, forKey: .html)
    }
}

