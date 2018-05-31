//
// TextReplaceRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Single text replacement request. */

open class TextReplaceRequest: TextReplace {

    public var defaultFont: String?


    

    // Encodable protocol methods

    public override func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(defaultFont, forKey: "DefaultFont")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        defaultFont = try container.decodeIfPresent(String.self, forKey: "DefaultFont")
        try super.init(from: decoder)
    }
}

