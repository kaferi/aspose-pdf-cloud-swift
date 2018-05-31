//
// FieldsResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class FieldsResponse: SaaSposeResponse {

    public var fields: Fields?


    

    // Encodable protocol methods

    public override func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(fields, forKey: "Fields")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        fields = try container.decodeIfPresent(Fields.self, forKey: "Fields")
        try super.init(from: decoder)
    }
}

