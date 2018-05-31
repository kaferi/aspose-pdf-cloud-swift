//
// TextItemsResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class TextItemsResponse: SaaSposeResponse {

    public var textItems: TextItems?


    

    // Encodable protocol methods

    public override func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(textItems, forKey: "TextItems")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        textItems = try container.decodeIfPresent(TextItems.self, forKey: "TextItems")
        try super.init(from: decoder)
    }
}

