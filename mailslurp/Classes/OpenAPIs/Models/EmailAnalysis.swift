//
// EmailAnalysis.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

/** Analysis result for email. Each verdict property is a string PASS|FAIL|GRAY or dynamic error message */
@objc public class EmailAnalysis: NSObject, Codable {

    /** Verdict of DomainKeys Identified Mail analysis */
    public var dkimVerdict: String?
    /** Verdict of Domain-based Message Authentication Reporting and Conformance analysis */
    public var dmarcVerdict: String?
    /** Verdict of spam ranking analysis */
    public var spamVerdict: String?
    /** Verdict of Send Policy Framework record spoofing analysis */
    public var spfVerdict: String?
    /** Verdict of virus scan analysis */
    public var virusVerdict: String?

    public init(dkimVerdict: String? = nil, dmarcVerdict: String? = nil, spamVerdict: String? = nil, spfVerdict: String? = nil, virusVerdict: String? = nil) {
        self.dkimVerdict = dkimVerdict
        self.dmarcVerdict = dmarcVerdict
        self.spamVerdict = spamVerdict
        self.spfVerdict = spfVerdict
        self.virusVerdict = virusVerdict
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case dkimVerdict
        case dmarcVerdict
        case spamVerdict
        case spfVerdict
        case virusVerdict
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(dkimVerdict, forKey: .dkimVerdict)
        try container.encodeIfPresent(dmarcVerdict, forKey: .dmarcVerdict)
        try container.encodeIfPresent(spamVerdict, forKey: .spamVerdict)
        try container.encodeIfPresent(spfVerdict, forKey: .spfVerdict)
        try container.encodeIfPresent(virusVerdict, forKey: .virusVerdict)
    }



}
