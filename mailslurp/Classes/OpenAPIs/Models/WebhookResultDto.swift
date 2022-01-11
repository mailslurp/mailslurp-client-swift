//
// WebhookResultDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

@objc public class WebhookResultDto: NSObject, Codable {

    public enum HttpMethod: String, Codable, CaseIterable {
        case _get = "GET"
        case head = "HEAD"
        case post = "POST"
        case put = "PUT"
        case patch = "PATCH"
        case delete = "DELETE"
        case options = "OPTIONS"
        case trace = "TRACE"
    }
    public enum WebhookEvent: String, Codable, CaseIterable {
        case emailReceived = "EMAIL_RECEIVED"
        case newEmail = "NEW_EMAIL"
        case newContact = "NEW_CONTACT"
        case newAttachment = "NEW_ATTACHMENT"
        case emailOpened = "EMAIL_OPENED"
        case emailRead = "EMAIL_READ"
    }
    public enum ResultType: String, Codable, CaseIterable {
        case badResponse = "BAD_RESPONSE"
        case exception = "EXCEPTION"
        case success = "SUCCESS"
    }
    public var _id: UUID?
    public var userId: UUID
    public var inboxId: UUID
    public var webhookId: UUID
    public var webhookUrl: String
    public var messageId: String
    public var redriveId: UUID?
    public var httpMethod: HttpMethod
    public var webhookEvent: WebhookEvent
    public var responseStatus: Int?
    public var responseStatusNum: NSNumber? {
        get {
            return responseStatus as NSNumber?
        }
    }
    public var responseTimeMillis: Int64
    public var responseBodyExtract: String?
    public var resultType: ResultType?
    public var createdAt: Date
    public var updatedAt: Date
    public var seen: Bool?
    public var seenNum: NSNumber? {
        get {
            return seen as NSNumber?
        }
    }

    public init(_id: UUID? = nil, userId: UUID, inboxId: UUID, webhookId: UUID, webhookUrl: String, messageId: String, redriveId: UUID? = nil, httpMethod: HttpMethod, webhookEvent: WebhookEvent, responseStatus: Int? = nil, responseTimeMillis: Int64, responseBodyExtract: String? = nil, resultType: ResultType? = nil, createdAt: Date, updatedAt: Date, seen: Bool? = nil) {
        self._id = _id
        self.userId = userId
        self.inboxId = inboxId
        self.webhookId = webhookId
        self.webhookUrl = webhookUrl
        self.messageId = messageId
        self.redriveId = redriveId
        self.httpMethod = httpMethod
        self.webhookEvent = webhookEvent
        self.responseStatus = responseStatus
        self.responseTimeMillis = responseTimeMillis
        self.responseBodyExtract = responseBodyExtract
        self.resultType = resultType
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.seen = seen
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _id = "id"
        case userId
        case inboxId
        case webhookId
        case webhookUrl
        case messageId
        case redriveId
        case httpMethod
        case webhookEvent
        case responseStatus
        case responseTimeMillis
        case responseBodyExtract
        case resultType
        case createdAt
        case updatedAt
        case seen
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(_id, forKey: ._id)
        try container.encode(userId, forKey: .userId)
        try container.encode(inboxId, forKey: .inboxId)
        try container.encode(webhookId, forKey: .webhookId)
        try container.encode(webhookUrl, forKey: .webhookUrl)
        try container.encode(messageId, forKey: .messageId)
        try container.encodeIfPresent(redriveId, forKey: .redriveId)
        try container.encode(httpMethod, forKey: .httpMethod)
        try container.encode(webhookEvent, forKey: .webhookEvent)
        try container.encodeIfPresent(responseStatus, forKey: .responseStatus)
        try container.encode(responseTimeMillis, forKey: .responseTimeMillis)
        try container.encodeIfPresent(responseBodyExtract, forKey: .responseBodyExtract)
        try container.encodeIfPresent(resultType, forKey: .resultType)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(seen, forKey: .seen)
    }



}
