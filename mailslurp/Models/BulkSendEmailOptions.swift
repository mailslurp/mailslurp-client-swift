//
// BulkSendEmailOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** Options for bulk sending an email from multiple addresses. See regular `sendEmail` methods for more information. */
public struct BulkSendEmailOptions: Codable, Hashable {

    /** Inboxes to send the email from */
    public var inboxIds: [UUID]
    public var sendEmailOptions: SendEmailOptions

    public init(inboxIds: [UUID], sendEmailOptions: SendEmailOptions) {
        self.inboxIds = inboxIds
        self.sendEmailOptions = sendEmailOptions
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case inboxIds
        case sendEmailOptions
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(inboxIds, forKey: .inboxIds)
        try container.encode(sendEmailOptions, forKey: .sendEmailOptions)
    }



}
