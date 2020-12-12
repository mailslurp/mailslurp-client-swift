//
// ReplyToEmailOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



@objc public class ReplyToEmailOptions: NSObject, Codable { 

    public enum SendStrategy: String, Codable, CaseIterable {
        case singleMessage = "SINGLE_MESSAGE"
    }
    /** List of uploaded attachments to send with the reply. Optional. */
    public var attachments: [String]?
    /** Body of the reply email you want to send */
    public var body: String?
    /** The charset that your message should be sent with. Optional. Default is UTF-8 */
    public var charset: String?
    /** Is the reply HTML */
    public var isHTML: Bool?
    public var isHTMLNum: NSNumber? {
        get {
            return isHTML as NSNumber?
        }
    }
    /** The replyTo header that should be used. Optional */
    public var replyTo: String?
    /** When to send the email. Typically immediately */
    public var sendStrategy: SendStrategy?
    /** Template ID to use instead of body. Will use template variable map to fill defined variable slots. */
    public var template: UUID?
    /** Template variables if using a template */
    public var templateVariables: Any?

    public init(attachments: [String]?, body: String?, charset: String?, isHTML: Bool?, replyTo: String?, sendStrategy: SendStrategy?, template: UUID?, templateVariables: Any?) {
        self.attachments = attachments
        self.body = body
        self.charset = charset
        self.isHTML = isHTML
        self.replyTo = replyTo
        self.sendStrategy = sendStrategy
        self.template = template
        self.templateVariables = templateVariables
    }

}
