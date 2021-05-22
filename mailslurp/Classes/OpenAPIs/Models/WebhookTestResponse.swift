//
// WebhookTestResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



@objc public class WebhookTestResponse: NSObject, Codable { 

    public var message: String?
    public var statusCode: Int?
    public var statusCodeNum: NSNumber? {
        get {
            return statusCode as NSNumber?
        }
    }

    public init(message: String?, statusCode: Int?) {
        self.message = message
        self.statusCode = statusCode
    }

}
