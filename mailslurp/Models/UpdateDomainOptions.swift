//
// UpdateDomainOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** Options for creating a domain to use with MailSlurp. You must have ownership access to this domain in order to verify it. Domains will not functionally currently until the domain has been verified. See https://www.mailslurp.com/guides/custom-domains for help. */
@objc public class UpdateDomainOptions: NSObject, Codable {

    public var catchAllInboxId: UUID?

    public init(catchAllInboxId: UUID? = nil) {
        self.catchAllInboxId = catchAllInboxId
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case catchAllInboxId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(catchAllInboxId, forKey: .catchAllInboxId)
    }



}
