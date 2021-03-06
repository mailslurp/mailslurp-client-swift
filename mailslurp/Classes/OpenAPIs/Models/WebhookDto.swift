//
// WebhookDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

/** Representation of a webhook for an inbox. The URL specified will be using by MailSlurp whenever an email is received by the attached inbox. A webhook entity should have a URL that points to your server. Your server should accept HTTP/S POST requests and return a success 200. MailSlurp will retry your webhooks if they fail. See https://api.mailslurp.com/schemas/webhook-payload for the payload schema. */
@objc public class WebhookDto: NSObject, Codable {

    public enum EventName: String, Codable, CaseIterable {
        case emailReceived = "EMAIL_RECEIVED"
        case newEmail = "NEW_EMAIL"
        case newContact = "NEW_CONTACT"
        case newAttachment = "NEW_ATTACHMENT"
        case emailOpened = "EMAIL_OPENED"
    }
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
    /** Does webhook expect basic authentication? If true it means you created this webhook with a username and password. MailSlurp will use these in the URL to authenticate itself. */
    public var basicAuth: Bool?
    public var basicAuthNum: NSNumber? {
        get {
            return basicAuth as NSNumber?
        }
    }
    /** When the webhook was created */
    public var createdAt: Date?
    public var eventName: EventName?
    /** ID of the Webhook */
    public var _id: UUID?
    /** The inbox that the Webhook will be triggered by */
    public var inboxId: UUID?
    /** HTTP method that your server endpoint must listen for */
    public var method: Method?
    /** Name of the webhook */
    public var name: String?
    /** JSON Schema for the payload that will be sent to your URL via the HTTP method described. */
    public var payloadJsonSchema: String?
    public var updatedAt: Date
    /** URL of your server that the webhook will be sent to. The schema of the JSON that is sent is described by the payloadJsonSchema. */
    public var url: String?
    /** User ID of the Webhook */
    public var userId: UUID?

    public init(basicAuth: Bool? = nil, createdAt: Date? = nil, eventName: EventName? = nil, _id: UUID? = nil, inboxId: UUID? = nil, method: Method? = nil, name: String? = nil, payloadJsonSchema: String? = nil, updatedAt: Date, url: String? = nil, userId: UUID? = nil) {
        self.basicAuth = basicAuth
        self.createdAt = createdAt
        self.eventName = eventName
        self._id = _id
        self.inboxId = inboxId
        self.method = method
        self.name = name
        self.payloadJsonSchema = payloadJsonSchema
        self.updatedAt = updatedAt
        self.url = url
        self.userId = userId
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case basicAuth
        case createdAt
        case eventName
        case _id = "id"
        case inboxId
        case method
        case name
        case payloadJsonSchema
        case updatedAt
        case url
        case userId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(basicAuth, forKey: .basicAuth)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(eventName, forKey: .eventName)
        try container.encodeIfPresent(_id, forKey: ._id)
        try container.encodeIfPresent(inboxId, forKey: .inboxId)
        try container.encodeIfPresent(method, forKey: .method)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(payloadJsonSchema, forKey: .payloadJsonSchema)
        try container.encode(updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(userId, forKey: .userId)
    }



}
