//
// Attachment.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Provides link to attachment. */

open class Attachment: LinkElement {

    /** Gets text associated with the attachment.  */
    public var description: String?
    /** Gets subtype of the attachment file. */
    public var mimeType: String?
    /** Gets the name of the attachment.  */
    public var name: String?
    /** The date and time when the embedded file was created. */
    public var creationDate: String?
    /** The date and time when the embedded file was last modified. */
    public var modificationDate: String?
    /** The size of the uncompressed embedded file, in bytes. */
    public var size: Int?
    /** A 16-byte string that is the checksum of the bytes of the uncompressed embedded file.  The checksum is calculated by applying the standard MD5 message-digest algorithm  to the bytes of the embedded file stream. */
    public var checkSum: String?


    

    // Encodable protocol methods

    public override func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(description, forKey: "Description")
        try container.encodeIfPresent(mimeType, forKey: "MimeType")
        try container.encodeIfPresent(name, forKey: "Name")
        try container.encodeIfPresent(creationDate, forKey: "CreationDate")
        try container.encodeIfPresent(modificationDate, forKey: "ModificationDate")
        try container.encodeIfPresent(size, forKey: "Size")
        try container.encodeIfPresent(checkSum, forKey: "CheckSum")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        description = try container.decodeIfPresent(String.self, forKey: "Description")
        mimeType = try container.decodeIfPresent(String.self, forKey: "MimeType")
        name = try container.decodeIfPresent(String.self, forKey: "Name")
        creationDate = try container.decodeIfPresent(String.self, forKey: "CreationDate")
        modificationDate = try container.decodeIfPresent(String.self, forKey: "ModificationDate")
        size = try container.decodeIfPresent(Int.self, forKey: "Size")
        checkSum = try container.decodeIfPresent(String.self, forKey: "CheckSum")
        try super.init(from: decoder)
    }
}

