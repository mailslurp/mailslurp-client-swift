//
// ValidateEmailAddressListOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

/** Options for validating a list of email addresses */
@objc public class ValidateEmailAddressListOptions: NSObject, Codable {

    public var emailAddressList: [String]

    public init(emailAddressList: [String]) {
        self.emailAddressList = emailAddressList
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case emailAddressList
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(emailAddressList, forKey: .emailAddressList)
    }



}
