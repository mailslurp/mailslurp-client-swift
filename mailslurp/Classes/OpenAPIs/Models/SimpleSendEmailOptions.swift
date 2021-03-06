//
// SimpleSendEmailOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

@objc public class SimpleSendEmailOptions: NSObject, Codable {

    /** Body of the email message. Supports HTML */
    public var body: String?
    /** ID of inbox to send from. If null an inbox will be created for sending */
    public var senderId: UUID?
    /** Subject line of the email */
    public var subject: String?
    /** Email address to send to */
    public var to: String?

    public init(body: String? = nil, senderId: UUID? = nil, subject: String? = nil, to: String? = nil) {
        self.body = body
        self.senderId = senderId
        self.subject = subject
        self.to = to
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case body
        case senderId
        case subject
        case to
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(body, forKey: .body)
        try container.encodeIfPresent(senderId, forKey: .senderId)
        try container.encodeIfPresent(subject, forKey: .subject)
        try container.encodeIfPresent(to, forKey: .to)
    }



}
