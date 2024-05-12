//
// ServerEndpoints.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc public class ServerEndpoints: NSObject, Codable, JSONEncodable {

    public var host: String
    public var port: Int
    public var tls: Bool
    public var altPorts: [Int]

    public init(host: String, port: Int, tls: Bool, altPorts: [Int]) {
        self.host = host
        self.port = port
        self.tls = tls
        self.altPorts = altPorts
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case host
        case port
        case tls
        case altPorts
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(host, forKey: .host)
        try container.encode(port, forKey: .port)
        try container.encode(tls, forKey: .tls)
        try container.encode(altPorts, forKey: .altPorts)
    }
}

