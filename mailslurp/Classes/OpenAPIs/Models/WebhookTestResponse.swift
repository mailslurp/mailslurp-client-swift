//
// WebhookTestResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

@objc public class WebhookTestResponse: NSObject, Codable {

    public var message: String?
    public var statusCode: Int?
    public var statusCodeNum: NSNumber? {
        get {
            return statusCode as NSNumber?
        }
    }

    public init(message: String? = nil, statusCode: Int? = nil) {
        self.message = message
        self.statusCode = statusCode
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case message
        case statusCode
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(message, forKey: .message)
        try container.encodeIfPresent(statusCode, forKey: .statusCode)
    }



}
