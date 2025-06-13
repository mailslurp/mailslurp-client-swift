//
// OptInConsentOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

@objcMembers public class OptInConsentOptions: NSObject, Codable, ParameterConvertible {

    public var emailAddress: String
    public var companyName: String?
    public var sendOptInOptions: SendOptInConsentEmailOptions?

    public init(emailAddress: String, companyName: String? = nil, sendOptInOptions: SendOptInConsentEmailOptions? = nil) {
        self.emailAddress = emailAddress
        self.companyName = companyName
        self.sendOptInOptions = sendOptInOptions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case emailAddress
        case companyName
        case sendOptInOptions
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(emailAddress, forKey: .emailAddress)
        try container.encodeIfPresent(companyName, forKey: .companyName)
        try container.encodeIfPresent(sendOptInOptions, forKey: .sendOptInOptions)
    }
}

