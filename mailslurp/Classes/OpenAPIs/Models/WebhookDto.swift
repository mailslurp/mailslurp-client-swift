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
    public enum EventName: String, Codable, CaseIterable {
        case emailReceived = "EMAIL_RECEIVED"
        case newEmail = "NEW_EMAIL"
        case newContact = "NEW_CONTACT"
        case newAttachment = "NEW_ATTACHMENT"
        case emailOpened = "EMAIL_OPENED"
        case emailRead = "EMAIL_READ"
        case bounce = "BOUNCE"
        case bounceRecipient = "BOUNCE_RECIPIENT"
    }
    /** ID of the Webhook */
    public var _id: UUID
    /** User ID of the Webhook */
    public var userId: UUID
    /** Does webhook expect basic authentication? If true it means you created this webhook with a username and password. MailSlurp will use these in the URL to authenticate itself. */
    public var basicAuth: Bool
    /** Name of the webhook */
    public var name: String?
    /** The inbox that the Webhook will be triggered by. If null then webhook triggered at account level */
    public var inboxId: UUID?
    /** URL of your server that the webhook will be sent to. The schema of the JSON that is sent is described by the payloadJsonSchema. */
    public var url: String
    /** HTTP method that your server endpoint must listen for */
    public var method: Method
    /** Deprecated. Fetch JSON Schema for webhook using the getJsonSchemaForWebhookPayload method */
    public var payloadJsonSchema: String
    /** When the webhook was created */
    public var createdAt: Date
    public var updatedAt: Date
    public var eventName: EventName?

    public init(_id: UUID, userId: UUID, basicAuth: Bool, name: String? = nil, inboxId: UUID? = nil, url: String, method: Method, payloadJsonSchema: String, createdAt: Date, updatedAt: Date, eventName: EventName? = nil) {
        self._id = _id
        self.userId = userId
        self.basicAuth = basicAuth
        self.name = name
        self.inboxId = inboxId
        self.url = url
        self.method = method
        self.payloadJsonSchema = payloadJsonSchema
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.eventName = eventName
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _id = "id"
        case userId
        case basicAuth
        case name
        case inboxId
        case url
        case method
        case payloadJsonSchema
        case createdAt
        case updatedAt
        case eventName
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(_id, forKey: ._id)
        try container.encode(userId, forKey: .userId)
        try container.encode(basicAuth, forKey: .basicAuth)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(inboxId, forKey: .inboxId)
        try container.encode(url, forKey: .url)
        try container.encode(method, forKey: .method)
        try container.encode(payloadJsonSchema, forKey: .payloadJsonSchema)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(eventName, forKey: .eventName)
    }



}
