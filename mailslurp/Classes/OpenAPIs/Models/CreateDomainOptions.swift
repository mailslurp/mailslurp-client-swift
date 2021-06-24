//
// CreateDomainOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

/** Options for creating a domain to use with MailSlurp. You must have ownership access to this domain in order to verify it. Domains will not function correctly until the domain has been verified. See https://www.mailslurp.com/guides/custom-domains for help. Domains can be either &#x60;HTTP&#x60; or &#x60;SMTP&#x60; type. The type of domain determines which inboxes can be used with it. &#x60;SMTP&#x60; inboxes use a mail server running &#x60;mx.mailslurp.com&#x60; while &#x60;HTTP&#x60; inboxes are handled by AWS SES. */
@objc public class CreateDomainOptions: NSObject, Codable {

    public enum DomainType: String, Codable, CaseIterable {
        case httpInbox = "HTTP_INBOX"
        case smtpDomain = "SMTP_DOMAIN"
    }
    /** Whether to create a catch all inbox for the domain. Any email sent to an address using your domain that cannot be matched to an existing inbox you created with the domain will be routed to the created catch all inbox. You can access emails using the regular methods on this inbox ID. */
    public var createdCatchAllInbox: Bool?
    public var createdCatchAllInboxNum: NSNumber? {
        get {
            return createdCatchAllInbox as NSNumber?
        }
    }
    /** Optional description of the domain. */
    public var _description: String?
    /** The top level domain you wish to use with MailSlurp. Do not specify subdomain just the top level. So &#x60;test.com&#x60; covers all subdomains such as &#x60;mail.test.com&#x60;. Don&#39;t include a protocol such as &#x60;http://&#x60;. Once added you must complete the verification steps by adding the returned records to your domain. */
    public var domain: String?
    /** Domain type to create. HTTP or SMTP domain. HTTP domain uses MailSlurps SES MX records. SMTP uses a custom SMTP server MX record. SMTP domains can only be used with SMTP inboxes. SMTP inboxes are more reliable for public inbound emails while HTTP inboxes are more suitable for testing. */
    public var domainType: DomainType?

    public init(createdCatchAllInbox: Bool? = nil, _description: String? = nil, domain: String? = nil, domainType: DomainType? = nil) {
        self.createdCatchAllInbox = createdCatchAllInbox
        self._description = _description
        self.domain = domain
        self.domainType = domainType
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case createdCatchAllInbox
        case _description = "description"
        case domain
        case domainType
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(createdCatchAllInbox, forKey: .createdCatchAllInbox)
        try container.encodeIfPresent(_description, forKey: ._description)
        try container.encodeIfPresent(domain, forKey: .domain)
        try container.encodeIfPresent(domainType, forKey: .domainType)
    }



}
