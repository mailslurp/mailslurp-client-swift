//
// WebhookTestRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

/** Result of webhook test request */
@objc public class WebhookTestRequest: NSObject, Codable {

    public enum Method: String, Codable, CaseIterable {
        case _get = "GET"
        case head = "HEAD"
        case post = "POST"
        case put = "PUT"
        case patch = "PATCH"
        case delete = "DELETE"
        case options = "OPTIONS"
        case trace = "TRACE"
    }
    public var url: String
    public var method: Method
    public var headers: [String: String]
    public var payload: String?

    public init(url: String, method: Method, headers: [String: String], payload: String? = nil) {
        self.url = url
        self.method = method
        self.headers = headers
        self.payload = payload
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case url
        case method
        case headers
        case payload
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(url, forKey: .url)
        try container.encode(method, forKey: .method)
        try container.encode(headers, forKey: .headers)
        try container.encodeIfPresent(payload, forKey: .payload)
    }



}
