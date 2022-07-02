//
// UserInfoDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct UserInfoDto: Codable, Hashable {

    public enum AccountState: String, Codable, CaseIterable {
        case frozen = "FROZEN"
        case active = "ACTIVE"
    }
    public enum SubscriptionType: String, Codable, CaseIterable {
        case proMonthly = "PRO_MONTHLY"
        case starter = "STARTER"
        case team = "TEAM"
        case enterprise = "ENTERPRISE"
    }
    public enum AccountType: String, Codable, CaseIterable {
        case solo = "SOLO"
        case childSolo = "CHILD_SOLO"
        case childTeam = "CHILD_TEAM"
    }
    public var id: UUID
    public var emailAddress: String
    public var accountState: AccountState
    public var subscriptionType: SubscriptionType?
    public var accountType: AccountType
    public var createdAt: Date

    public init(id: UUID, emailAddress: String, accountState: AccountState, subscriptionType: SubscriptionType? = nil, accountType: AccountType, createdAt: Date) {
        self.id = id
        self.emailAddress = emailAddress
        self.accountState = accountState
        self.subscriptionType = subscriptionType
        self.accountType = accountType
        self.createdAt = createdAt
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case emailAddress
        case accountState
        case subscriptionType
        case accountType
        case createdAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(emailAddress, forKey: .emailAddress)
        try container.encode(accountState, forKey: .accountState)
        try container.encodeIfPresent(subscriptionType, forKey: .subscriptionType)
        try container.encode(accountType, forKey: .accountType)
        try container.encode(createdAt, forKey: .createdAt)
    }



}
