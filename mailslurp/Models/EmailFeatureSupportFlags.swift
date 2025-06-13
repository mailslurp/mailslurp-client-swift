//
// EmailFeatureSupportFlags.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

@objcMembers public class EmailFeatureSupportFlags: NSObject, Codable, ParameterConvertible {

    public enum Status: String, Sendable, Codable, CaseIterable {
        case supported = "SUPPORTED"
        case partial = "PARTIAL"
        case notSupported = "NOT_SUPPORTED"
        case unknown = "UNKNOWN"
    }
    public static let notesRule = ArrayRule(minItems: nil, maxItems: nil, uniqueItems: true)
    public var status: Status
    public var notes: Set<String>?

    public init(status: Status, notes: Set<String>? = nil) {
        self.status = status
        self.notes = notes
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case status
        case notes
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(status, forKey: .status)
        try container.encodeIfPresent(notes, forKey: .notes)
    }
}

