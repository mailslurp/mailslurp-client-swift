//
// CreateConnectorWithOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Options for creating an inbox connection with an external mail provider including extra settings */
@objcMembers public class CreateConnectorWithOptions: NSObject, Codable, ParameterConvertible {

    public var createConnectorOptions: CreateConnectorOptions
    public var createConnectorImapConnectionOptions: CreateConnectorImapConnectionOptions?
    public var createConnectorSmtpConnectionOptions: CreateConnectorSmtpConnectionOptions?
    public var createConnectorSyncSettingsOptions: CreateConnectorSyncSettingsOptions?

    public init(createConnectorOptions: CreateConnectorOptions, createConnectorImapConnectionOptions: CreateConnectorImapConnectionOptions? = nil, createConnectorSmtpConnectionOptions: CreateConnectorSmtpConnectionOptions? = nil, createConnectorSyncSettingsOptions: CreateConnectorSyncSettingsOptions? = nil) {
        self.createConnectorOptions = createConnectorOptions
        self.createConnectorImapConnectionOptions = createConnectorImapConnectionOptions
        self.createConnectorSmtpConnectionOptions = createConnectorSmtpConnectionOptions
        self.createConnectorSyncSettingsOptions = createConnectorSyncSettingsOptions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case createConnectorOptions
        case createConnectorImapConnectionOptions
        case createConnectorSmtpConnectionOptions
        case createConnectorSyncSettingsOptions
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(createConnectorOptions, forKey: .createConnectorOptions)
        try container.encodeIfPresent(createConnectorImapConnectionOptions, forKey: .createConnectorImapConnectionOptions)
        try container.encodeIfPresent(createConnectorSmtpConnectionOptions, forKey: .createConnectorSmtpConnectionOptions)
        try container.encodeIfPresent(createConnectorSyncSettingsOptions, forKey: .createConnectorSyncSettingsOptions)
    }
}

