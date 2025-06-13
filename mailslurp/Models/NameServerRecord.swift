//
// NameServerRecord.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Name Server Record */
@objcMembers public class NameServerRecord: NSObject, Codable, ParameterConvertible {

    public var raw: String
    public var recordType: String
    public var priority: String
    public var value: String

    public init(raw: String, recordType: String, priority: String, value: String) {
        self.raw = raw
        self.recordType = recordType
        self.priority = priority
        self.value = value
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case raw
        case recordType
        case priority
        case value
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(raw, forKey: .raw)
        try container.encode(recordType, forKey: .recordType)
        try container.encode(priority, forKey: .priority)
        try container.encode(value, forKey: .value)
    }
}

