//
// SpellingIssue.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc public class SpellingIssue: NSObject, Codable, JSONEncodable {

    public enum Severity: String, Codable, CaseIterable {
        case warning = "Warning"
        case error = "Error"
    }
    public var group: String
    public var suggestion: String
    public var severity: Severity
    public var message: String

    public init(group: String, suggestion: String, severity: Severity, message: String) {
        self.group = group
        self.suggestion = suggestion
        self.severity = severity
        self.message = message
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case group
        case suggestion
        case severity
        case message
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(group, forKey: .group)
        try container.encode(suggestion, forKey: .suggestion)
        try container.encode(severity, forKey: .severity)
        try container.encode(message, forKey: .message)
    }
}

