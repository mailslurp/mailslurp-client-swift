//
// ForwardEmailOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

/** Options for forwarding an email */
@objc public class ForwardEmailOptions: NSObject, Codable {

    /** Optional bcc recipients */
    public var bcc: [String]?
    /** Optional cc recipients */
    public var cc: [String]?
    /** Optional from override */
    public var from: String?
    /** Subject for forwarded email */
    public var subject: String?
    /** To recipients for forwarded email */
    public var to: [String]?
    /** Optionally use inbox name as display name for sender email address */
    public var useInboxName: Bool?
    public var useInboxNameNum: NSNumber? {
        get {
            return useInboxName as NSNumber?
        }
    }

    public init(bcc: [String]? = nil, cc: [String]? = nil, from: String? = nil, subject: String? = nil, to: [String]? = nil, useInboxName: Bool? = nil) {
        self.bcc = bcc
        self.cc = cc
        self.from = from
        self.subject = subject
        self.to = to
        self.useInboxName = useInboxName
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case bcc
        case cc
        case from
        case subject
        case to
        case useInboxName
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(bcc, forKey: .bcc)
        try container.encodeIfPresent(cc, forKey: .cc)
        try container.encodeIfPresent(from, forKey: .from)
        try container.encodeIfPresent(subject, forKey: .subject)
        try container.encodeIfPresent(to, forKey: .to)
        try container.encodeIfPresent(useInboxName, forKey: .useInboxName)
    }



}
