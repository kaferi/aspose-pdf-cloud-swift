/**
 *
 *   Copyright (c) 2020 Aspose.PDF Cloud
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 */




import Foundation


/** File or folder information */

open class StorageFile: Codable {

    /** File or folder name. */
    public var name: String?
    /** True if it is a folder. */
    public var isFolder: Bool
    /** File or folder last modified DateTime. */
    public var modifiedDate: Date?
    /** File or folder size. */
    public var size: Int64
    /** File or folder path. */
    public var path: String?

        
    
    public init(name: String?, isFolder: Bool, modifiedDate: Date?, size: Int64, path: String?) {
        self.name = name
        self.isFolder = isFolder
        self.modifiedDate = modifiedDate
        self.size = size
        self.path = path
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(name, forKey: "Name")
        try container.encode(isFolder, forKey: "IsFolder")
        try container.encodeIfPresent(modifiedDate, forKey: "ModifiedDate")
        try container.encode(size, forKey: "Size")
        try container.encodeIfPresent(path, forKey: "Path")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        name = try container.decodeIfPresent(String.self, forKey: "Name")
        isFolder = try container.decode(Bool.self, forKey: "IsFolder")
        if let strDate = try container.decodeIfPresent(String.self, forKey: "ModifiedDate") {
            modifiedDate = try CodableHelper.decodeDate(strDate)
        }
        size = try container.decode(Int64.self, forKey: "Size")
        path = try container.decodeIfPresent(String.self, forKey: "Path")
    }
}

