//
// SendEmailOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** Options for sending an email message from an inbox. You must provide one of: &#x60;to&#x60;, &#x60;toGroup&#x60;, or &#x60;toContacts&#x60; to send an email. All other parameters are optional.  */
@objc public class SendEmailOptions: NSObject, Codable {

    public enum SendStrategy: String, Codable, CaseIterable {
        case singleMessage = "SINGLE_MESSAGE"
    }
    /** Optional list of attachment IDs to send with this email. You must first upload each attachment separately via method call or dashboard in order to obtain attachment IDs. This way you can reuse attachments with different emails once uploaded. There are several ways to upload that support &#x60;multi-part form&#x60;, &#x60;base64 file encoding&#x60;, and octet stream binary uploads. See the &#x60;UploadController&#x60; for available methods.  */
    public var attachments: [String]?
    /** Optional list of bcc destination email addresses */
    public var bcc: [String]?
    /** Optional contents of email. If body contains HTML then set &#x60;isHTML&#x60; to true to ensure that email clients render it correctly. You can use moustache template syntax in the email body in conjunction with &#x60;toGroup&#x60; contact variables or &#x60;templateVariables&#x60; data. If you need more templating control consider creating a template and using the &#x60;template&#x60; property instead of the body. */
    public var body: String?
    /** Optional list of cc destination email addresses */
    public var cc: [String]?
    /** Optional charset */
    public var charset: String?
    /** Optional from address. Email address is RFC 5322 format and may include a display name and email in angle brackets (&#x60;my@address.com&#x60; or &#x60;My inbox &lt;my@address.com&gt;&#x60;). If no sender is set the source inbox address will be used for this field. If you set &#x60;useInboxName&#x60; to &#x60;true&#x60; the from field will include the inbox name as a display name: &#x60;inbox_name &lt;inbox@address.com&gt;&#x60;. For this to work use the name field when creating an inbox. Beware of potential spam penalties when setting the from field to an address not used by the inbox. Your emails may get blocked by services if you impersonate another address. To use a custom email addresses use a custom domain. You can create domains with the DomainController. The domain must be verified in the dashboard before it can be used. */
    public var from: String?
    /** Optional HTML flag to indicate that contents is HTML. Set&#39;s a &#x60;content-type: text/html&#x60; for email. (Deprecated: use &#x60;isHTML&#x60; instead.) */
    public var html: Bool?
    public var htmlNum: NSNumber? {
        get {
            return html as NSNumber?
        }
    }
    /** Optional HTML flag. If true the &#x60;content-type&#x60; of the email will be &#x60;text/html&#x60;. Set to true when sending HTML to ensure proper rending on email clients */
    public var isHTML: Bool?
    public var isHTMLNum: NSNumber? {
        get {
            return isHTML as NSNumber?
        }
    }
    /** Optional replyTo header */
    public var replyTo: String?
    /** Optional strategy to use when sending the email */
    public var sendStrategy: SendStrategy?
    /** Optional email subject line */
    public var subject: String?
    /** Optional template ID to use for body. Will override body if provided. When using a template make sure you pass the corresponding map of &#x60;templateVariables&#x60;. You can find which variables are needed by fetching the template itself or viewing it in the dashboard. */
    public var template: UUID?
    /** Optional map of template variables. Will replace moustache syntax variables in subject and body or template with the associated values if found. */
    public var templateVariables: AnyCodable?
    /** List of destination email addresses. Each email address must be RFC 5322 format. Even single recipients must be in array form. Maximum recipients per email depends on your plan. If you need to send many emails try using contacts or contact groups or use a non standard sendStrategy to ensure that spam filters are not triggered (many recipients in one email can affect your spam rating). Be cautious when sending emails that your recipients exist. High bounce rates (meaning a high percentage of emails cannot be delivered because an address does not exist) can result in account freezing. */
    public var to: [String]?
    /** Optional list of contact IDs to send email to. Manage your contacts via the API or dashboard. When contacts are used the email is sent to each contact separately so they will not see other recipients. */
    public var toContacts: [UUID]?
    /** Optional contact group ID to send email to. You can create contacts and contact groups in the API or dashboard and use them for email campaigns. When contact groups are used the email is sent to each contact separately so they will not see other recipients */
    public var toGroup: UUID?
    /** Use name of inbox as sender email address name. Will construct RFC 5322 email address with &#x60;Inbox name &lt;inbox@address.com&gt;&#x60; if the inbox has a name. */
    public var useInboxName: Bool?
    public var useInboxNameNum: NSNumber? {
        get {
            return useInboxName as NSNumber?
        }
    }

    public init(attachments: [String]? = nil, bcc: [String]? = nil, body: String? = nil, cc: [String]? = nil, charset: String? = nil, from: String? = nil, html: Bool? = nil, isHTML: Bool? = nil, replyTo: String? = nil, sendStrategy: SendStrategy? = nil, subject: String? = nil, template: UUID? = nil, templateVariables: AnyCodable? = nil, to: [String]? = nil, toContacts: [UUID]? = nil, toGroup: UUID? = nil, useInboxName: Bool? = nil) {
        self.attachments = attachments
        self.bcc = bcc
        self.body = body
        self.cc = cc
        self.charset = charset
        self.from = from
        self.html = html
        self.isHTML = isHTML
        self.replyTo = replyTo
        self.sendStrategy = sendStrategy
        self.subject = subject
        self.template = template
        self.templateVariables = templateVariables
        self.to = to
        self.toContacts = toContacts
        self.toGroup = toGroup
        self.useInboxName = useInboxName
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case attachments
        case bcc
        case body
        case cc
        case charset
        case from
        case html
        case isHTML
        case replyTo
        case sendStrategy
        case subject
        case template
        case templateVariables
        case to
        case toContacts
        case toGroup
        case useInboxName
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(attachments, forKey: .attachments)
        try container.encodeIfPresent(bcc, forKey: .bcc)
        try container.encodeIfPresent(body, forKey: .body)
        try container.encodeIfPresent(cc, forKey: .cc)
        try container.encodeIfPresent(charset, forKey: .charset)
        try container.encodeIfPresent(from, forKey: .from)
        try container.encodeIfPresent(html, forKey: .html)
        try container.encodeIfPresent(isHTML, forKey: .isHTML)
        try container.encodeIfPresent(replyTo, forKey: .replyTo)
        try container.encodeIfPresent(sendStrategy, forKey: .sendStrategy)
        try container.encodeIfPresent(subject, forKey: .subject)
        try container.encodeIfPresent(template, forKey: .template)
        try container.encodeIfPresent(templateVariables, forKey: .templateVariables)
        try container.encodeIfPresent(to, forKey: .to)
        try container.encodeIfPresent(toContacts, forKey: .toContacts)
        try container.encodeIfPresent(toGroup, forKey: .toGroup)
        try container.encodeIfPresent(useInboxName, forKey: .useInboxName)
    }



}
