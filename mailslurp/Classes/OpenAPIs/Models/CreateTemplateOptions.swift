//
// CreateTemplateOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

@objc public class CreateTemplateOptions: NSObject, Codable {

    public var name: String
    public var content: String

    public init(name: String, content: String) {
        self.name = name
        self.content = content
    }

}
