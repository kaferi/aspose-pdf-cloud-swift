//
// DocumentPropertiesResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class DocumentPropertiesResponse: SaaSposeResponse {

    public var documentProperties: DocumentProperties?


    

    // Encodable protocol methods

    public override func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(documentProperties, forKey: "DocumentProperties")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        documentProperties = try container.decodeIfPresent(DocumentProperties.self, forKey: "DocumentProperties")
        try super.init(from: decoder)
    }
}

