//
// ImageIssue.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

@objcMembers public class ImageIssue: NSObject, Codable, ParameterConvertible {

    public enum Severity: String, Sendable, Codable, CaseIterable {
        case warning = "Warning"
        case error = "Error"
    }
    public var url: String
    public var responseStatus: Int?
    public var responseStatusNum: NSNumber? {
        get {
            return responseStatus as NSNumber?
        }
    }
    public var severity: Severity
    public var message: String

    public init(url: String, responseStatus: Int? = nil, severity: Severity, message: String) {
        self.url = url
        self.responseStatus = responseStatus
        self.severity = severity
        self.message = message
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case url
        case responseStatus
        case severity
        case message
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(url, forKey: .url)
        try container.encodeIfPresent(responseStatus, forKey: .responseStatus)
        try container.encode(severity, forKey: .severity)
        try container.encode(message, forKey: .message)
    }
}

