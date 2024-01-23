//
// EmailAnalysis.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Analysis result for email. Each verdict property is a string PASS|FAIL|GRAY or dynamic error message */
@objc public class EmailAnalysis: NSObject, Codable, JSONEncodable {

    /** Verdict of spam ranking analysis */
    public var spamVerdict: String?
    /** Verdict of virus scan analysis */
    public var virusVerdict: String?
    /** Verdict of Send Policy Framework record spoofing analysis */
    public var spfVerdict: String?
    /** Verdict of DomainKeys Identified Mail analysis */
    public var dkimVerdict: String?
    /** Verdict of Domain-based Message Authentication Reporting and Conformance analysis */
    public var dmarcVerdict: String?

    public init(spamVerdict: String? = nil, virusVerdict: String? = nil, spfVerdict: String? = nil, dkimVerdict: String? = nil, dmarcVerdict: String? = nil) {
        self.spamVerdict = spamVerdict
        self.virusVerdict = virusVerdict
        self.spfVerdict = spfVerdict
        self.dkimVerdict = dkimVerdict
        self.dmarcVerdict = dmarcVerdict
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case spamVerdict
        case virusVerdict
        case spfVerdict
        case dkimVerdict
        case dmarcVerdict
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(spamVerdict, forKey: .spamVerdict)
        try container.encodeIfPresent(virusVerdict, forKey: .virusVerdict)
        try container.encodeIfPresent(spfVerdict, forKey: .spfVerdict)
        try container.encodeIfPresent(dkimVerdict, forKey: .dkimVerdict)
        try container.encodeIfPresent(dmarcVerdict, forKey: .dmarcVerdict)
    }
}

