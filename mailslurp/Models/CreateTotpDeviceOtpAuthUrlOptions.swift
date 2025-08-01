//
// CreateTotpDeviceOtpAuthUrlOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

@objcMembers public class CreateTotpDeviceOtpAuthUrlOptions: NSObject, Codable, ParameterConvertible {

    public static let digitsRule = NumericRule<Int>(minimum: 0, exclusiveMinimum: false, maximum: 255, exclusiveMaximum: false, multipleOf: nil)
    /** OTP Auth URI for connecting a TOTP device. */
    public var otpAuthUrl: String
    /** Name for labeling the TOTP device */
    public var name: String?
    /** Optional username for the TOTP device */
    public var username: String?
    /** Optional issuer override for the TOTP device */
    public var issuer: String?
    /** Optional number of digits in TOTP code */
    public var digits: Int? = 6
    public var digitsNum: NSNumber? {
        get {
            return digits as NSNumber?
        }
    }
    /** Optional period in seconds for TOTP code expiration */
    public var period: Int? = 30
    public var periodNum: NSNumber? {
        get {
            return period as NSNumber?
        }
    }
    /** Optional algorithm override */
    public var algorithm: String?

    public init(otpAuthUrl: String, name: String? = nil, username: String? = nil, issuer: String? = nil, digits: Int? = 6, period: Int? = 30, algorithm: String? = nil) {
        self.otpAuthUrl = otpAuthUrl
        self.name = name
        self.username = username
        self.issuer = issuer
        self.digits = digits
        self.period = period
        self.algorithm = algorithm
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case otpAuthUrl
        case name
        case username
        case issuer
        case digits
        case period
        case algorithm
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(otpAuthUrl, forKey: .otpAuthUrl)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(username, forKey: .username)
        try container.encodeIfPresent(issuer, forKey: .issuer)
        try container.encodeIfPresent(digits, forKey: .digits)
        try container.encodeIfPresent(period, forKey: .period)
        try container.encodeIfPresent(algorithm, forKey: .algorithm)
    }
}

