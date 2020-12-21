//
// VerifyEmailAddressOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

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

    public init(mailServerDomain: String?, emailAddress: String, senderEmailAddress: String?, port: Int?) {
        self.mailServerDomain = mailServerDomain
        self.emailAddress = emailAddress
        self.senderEmailAddress = senderEmailAddress
        self.port = port
    }

}
