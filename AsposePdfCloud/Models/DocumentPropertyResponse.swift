//
// DocumentPropertyResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class DocumentPropertyResponse: SaaSposeResponse {

    public var documentProperty: DocumentProperty?


    

    // Encodable protocol methods

    public override func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(documentProperty, forKey: "DocumentProperty")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        documentProperty = try container.decodeIfPresent(DocumentProperty.self, forKey: "DocumentProperty")
        try super.init(from: decoder)
    }
}

