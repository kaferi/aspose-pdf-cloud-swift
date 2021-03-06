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

import XCTest
@testable import AsposePdfCloud

class ConvertTests: AsposePdfCloudTests {
    
    private let fileName = "4pages.pdf"
    
    //to DOC
    
    func testGetPdfInStorageToDoc() {

        let expectation = self.expectation(description: "testGetPdfInStorageToDoc")
        
        uploadFile(name: fileName) {
            
            PdfAPI.getPdfInStorageToDoc(name: self.fileName, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPdfInStorageToDoc")
                    return
                }
                
                if let response = response {
                    XCTAssertFalse(response.isEmpty)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testPutPdfInStorageToDoc() {
        
        let expectation = self.expectation(description: "testPutPdfInStorageToDoc")
        let resFileName = "result.doc"
        let outPath = "\(self.tempFolder)/\(resFileName)"
        
        uploadFile(name: fileName) {
            
            PdfAPI.putPdfInStorageToDoc(name: self.fileName, outPath: outPath, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutPdfInStorageToDoc")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testPutPdfInRequestToDoc() {
        
        let expectation = self.expectation(description: "testPutPdfInRequestToDoc")
        let resFileName = "result.doc"
        let outPath = "\(self.tempFolder)/\(resFileName)"
        let file = getURL(fileName)
        
        PdfAPI.putPdfInRequestToDoc(outPath: outPath, file: file) {
            (response, error) in
            guard error == nil else {
                XCTFail("error testPutPdfInRequestToDoc")
                return
            }
            
            if let response = response {
                XCTAssertEqual(response.code, self.codeOk)
                
                expectation.fulfill()
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    //to PDFA
    
    func testGetPdfInStorageToPdfA() {
        
        let expectation = self.expectation(description: "testGetPdfInStorageToPdfA")
        
        uploadFile(name: fileName) {
            
            PdfAPI.getPdfInStorageToPdfA(name: self.fileName, type: PdfAType.pdfa1a.rawValue, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPdfInStorageToPdfA")
                    return
                }
                
                if let response = response {
                    XCTAssertFalse(response.isEmpty)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testPutPdfInStorageToPdfA() {
        
        let expectation = self.expectation(description: "testPutPdfInStorageToPdfA")
        let resFileName = "result.pdf"
        let outPath = "\(self.tempFolder)/\(resFileName)"
        
        uploadFile(name: fileName) {
            
            PdfAPI.putPdfInStorageToPdfA(name: self.fileName, outPath: outPath, type: PdfAType.pdfa1a.rawValue, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutPdfInStorageToPdfA")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testPutPdfInRequestToPdfA() {
        
        let expectation = self.expectation(description: "testPutPdfInRequestToPdfA")
        let resFileName = "result.pdf"
        let outPath = "\(self.tempFolder)/\(resFileName)"
        let file = getURL(fileName)
        
        PdfAPI.putPdfInRequestToPdfA(outPath: outPath, type: PdfAType.pdfa1a.rawValue, file: file) {
            (response, error) in
            guard error == nil else {
                XCTFail("error testPutPdfInRequestToPdfA")
                return
            }
            
            if let response = response {
                XCTAssertEqual(response.code, self.codeOk)
                
                expectation.fulfill()
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    //to TIFF
    
    func testGetPdfInStorageToTiff() {
        
        let expectation = self.expectation(description: "testGetPdfInStorageToTiff")
        
        uploadFile(name: fileName) {
            
            PdfAPI.getPdfInStorageToTiff(name: self.fileName, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPdfInStorageToTiff")
                    return
                }
                
                if let response = response {
                    XCTAssertFalse(response.isEmpty)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testPutPdfInStorageToTiff() {
        
        let expectation = self.expectation(description: "testPutPdfInStorageToTiff")
        let resFileName = "result.tiff"
        let outPath = "\(self.tempFolder)/\(resFileName)"
        
        uploadFile(name: fileName) {
            
            PdfAPI.putPdfInStorageToTiff(name: self.fileName, outPath: outPath, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutPdfInStorageToTiff")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testPutPdfInRequestToTiff() {
        
        let expectation = self.expectation(description: "testPutPdfInRequestToTiff")
        let resFileName = "result.tiff"
        let outPath = "\(self.tempFolder)/\(resFileName)"
        let file = getURL(fileName)
        
        PdfAPI.putPdfInRequestToTiff(outPath: outPath, file: file) {
            (response, error) in
            guard error == nil else {
                XCTFail("error testPutPdfInRequestToTiff")
                return
            }
            
            if let response = response {
                XCTAssertEqual(response.code, self.codeOk)
                
                expectation.fulfill()
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    //to SVG
    
    func testGetPdfInStorageToSvg() {
        
        let expectation = self.expectation(description: "testGetPdfInStorageToSvg")
        
        uploadFile(name: fileName) {
            
            PdfAPI.getPdfInStorageToSvg(name: self.fileName, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPdfInStorageToSvg")
                    return
                }
                
                if let response = response {
                    XCTAssertFalse(response.isEmpty)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testPutPdfInStorageToSvg() {
        
        let expectation = self.expectation(description: "testPutPdfInStorageToSvg")
        let resFileName = "result.svg"
        let outPath = "\(self.tempFolder)/\(resFileName)"
        
        uploadFile(name: fileName) {
            
            PdfAPI.putPdfInStorageToSvg(name: self.fileName, outPath: outPath, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutPdfInStorageToSvg")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testPutPdfInRequestToSvg() {
        
        let expectation = self.expectation(description: "testPutPdfInRequestToSvg")
        let resFileName = "result.svg"
        let outPath = "\(self.tempFolder)/\(resFileName)"
        let file = getURL(fileName)
        
        PdfAPI.putPdfInRequestToSvg(outPath: outPath, file: file) {
            (response, error) in
            guard error == nil else {
                XCTFail("error testPutPdfInRequestToSvg")
                return
            }
            
            if let response = response {
                XCTAssertEqual(response.code, self.codeOk)
                
                expectation.fulfill()
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    //to XPS
    
    func testGetPdfInStorageToXps() {
        
        let expectation = self.expectation(description: "testGetPdfInStorageToXps")
        
        uploadFile(name: fileName) {
            
            PdfAPI.getPdfInStorageToXps(name: self.fileName, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPdfInStorageToXps")
                    return
                }
                
                if let response = response {
                    XCTAssertFalse(response.isEmpty)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testPutPdfInStorageToXps() {
        
        let expectation = self.expectation(description: "testPutPdfInStorageToXps")
        let resFileName = "result.xps"
        let outPath = "\(self.tempFolder)/\(resFileName)"
        
        uploadFile(name: fileName) {
            
            PdfAPI.putPdfInStorageToXps(name: self.fileName, outPath: outPath, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutPdfInStorageToXps")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testPutPdfInRequestToXps() {
        
        let expectation = self.expectation(description: "testPutPdfInRequestToXps")
        let resFileName = "result.xps"
        let outPath = "\(self.tempFolder)/\(resFileName)"
        let file = getURL(fileName)
        
        PdfAPI.putPdfInRequestToXps(outPath: outPath, file: file) {
            (response, error) in
            guard error == nil else {
                XCTFail("error testPutPdfInRequestToXps")
                return
            }
            
            if let response = response {
                XCTAssertEqual(response.code, self.codeOk)
                
                expectation.fulfill()
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    //to XLS
    
    func testGetPdfInStorageToXls() {
        
        let expectation = self.expectation(description: "testGetPdfInStorageToXls")
        
        uploadFile(name: fileName) {
            
            PdfAPI.getPdfInStorageToXls(name: self.fileName, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPdfInStorageToXls")
                    return
                }
                
                if let response = response {
                    XCTAssertFalse(response.isEmpty)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testPutPdfInStorageToXls() {
        
        let expectation = self.expectation(description: "testPutPdfInStorageToXls")
        let resFileName = "result.xls"
        let outPath = "\(self.tempFolder)/\(resFileName)"
        
        uploadFile(name: fileName) {
            
            PdfAPI.putPdfInStorageToXls(name: self.fileName, outPath: outPath, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutPdfInStorageToXls")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testPutPdfInRequestToXls() {
        
        let expectation = self.expectation(description: "testPutPdfInRequestToXls")
        let resFileName = "result.xls"
        let outPath = "\(self.tempFolder)/\(resFileName)"
        let file = getURL(fileName)
        
        PdfAPI.putPdfInRequestToXls(outPath: outPath, file: file) {
            (response, error) in
            guard error == nil else {
                XCTFail("error testPutPdfInRequestToXls")
                return
            }
            
            if let response = response {
                XCTAssertEqual(response.code, self.codeOk)
                
                expectation.fulfill()
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    //to XLSX
    
    func testGetPdfInStorageToXlsx() {
        
        let expectation = self.expectation(description: "testGetPdfInStorageToXlsx")
        
        uploadFile(name: fileName) {
            
            PdfAPI.getPdfInStorageToXlsx(name: self.fileName, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPdfInStorageToXlsx")
                    return
                }
                
                if let response = response {
                    XCTAssertFalse(response.isEmpty)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testPutPdfInStorageToXlsx() {
        
        let expectation = self.expectation(description: "testPutPdfInStorageToXlsx")
        let resFileName = "result.xlsx"
        let outPath = "\(self.tempFolder)/\(resFileName)"
        
        uploadFile(name: fileName) {
            
            PdfAPI.putPdfInStorageToXlsx(name: self.fileName, outPath: outPath, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutPdfInStorageToXlsx")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testPutPdfInRequestToXlsx() {
        
        let expectation = self.expectation(description: "testPutPdfInRequestToXlsx")
        let resFileName = "result.xlsx"
        let outPath = "\(self.tempFolder)/\(resFileName)"
        let file = getURL(fileName)
        
        PdfAPI.putPdfInRequestToXlsx(outPath: outPath, file: file) {
            (response, error) in
            guard error == nil else {
                XCTFail("error testPutPdfInRequestToXlsx")
                return
            }
            
            if let response = response {
                XCTAssertEqual(response.code, self.codeOk)
                
                expectation.fulfill()
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    //to HTML
    
    func testGetPdfInStorageToHtml() {
        
        let expectation = self.expectation(description: "testGetPdfInStorageToHtml")
        
        uploadFile(name: fileName) {
            
            PdfAPI.getPdfInStorageToHtml(name: self.fileName, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPdfInStorageToHtml")
                    return
                }
                
                if let response = response {
                    XCTAssertFalse(response.isEmpty)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testPutPdfInStorageToHtml() {
        
        let expectation = self.expectation(description: "testPutPdfInStorageToHtml")
        let resFileName = "result.html"
        let outPath = "\(self.tempFolder)/\(resFileName)"
        
        uploadFile(name: fileName) {
            
            PdfAPI.putPdfInStorageToHtml(name: self.fileName, outPath: outPath, folder: self.tempFolder, outputFormat: OutputFormat.folder.rawValue) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutPdfInStorageToHtml")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testPutPdfInRequestToHtml() {
        
        let expectation = self.expectation(description: "testPutPdfInRequestToHtml")
        let resFileName = "result.zip"
        let outPath = "\(self.tempFolder)/\(resFileName)"
        let file = getURL(fileName)
        
        PdfAPI.putPdfInRequestToHtml(outPath: outPath, file: file) {
            (response, error) in
            guard error == nil else {
                XCTFail("error testPutPdfInRequestToHtml")
                return
            }
            
            if let response = response {
                XCTAssertEqual(response.code, self.codeOk)
                
                expectation.fulfill()
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    //to EPUB
    
    func testGetPdfInStorageToEpub() {
        
        let expectation = self.expectation(description: "testGetPdfInStorageToEpub")
        
        uploadFile(name: fileName) {
            
            PdfAPI.getPdfInStorageToEpub(name: self.fileName, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPdfInStorageToEpub")
                    return
                }
                
                if let response = response {
                    XCTAssertFalse(response.isEmpty)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testPutPdfInStorageToEpub() {
        
        let expectation = self.expectation(description: "testPutPdfInStorageToEpub")
        let resFileName = "result.epub"
        let outPath = "\(self.tempFolder)/\(resFileName)"
        
        uploadFile(name: fileName) {
            
            PdfAPI.putPdfInStorageToEpub(name: self.fileName, outPath: outPath, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutPdfInStorageToEpub")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testPutPdfInRequestToEpub() {
        
        let expectation = self.expectation(description: "testPutPdfInRequestToEpub")
        let resFileName = "result.epub"
        let outPath = "\(self.tempFolder)/\(resFileName)"
        let file = getURL(fileName)
        
        PdfAPI.putPdfInRequestToEpub(outPath: outPath, file: file) {
            (response, error) in
            guard error == nil else {
                XCTFail("error testPutPdfInRequestToEpub")
                return
            }
            
            if let response = response {
                XCTAssertEqual(response.code, self.codeOk)
                
                expectation.fulfill()
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    //to PPTX
    
    func testGetPdfInStorageToPptx() {
        
        let expectation = self.expectation(description: "testGetPdfInStorageToPptx")
        
        uploadFile(name: fileName) {
            
            PdfAPI.getPdfInStorageToPptx(name: self.fileName, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPdfInStorageToPptx")
                    return
                }
                
                if let response = response {
                    XCTAssertFalse(response.isEmpty)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testPutPdfInStorageToPptx() {
        
        let expectation = self.expectation(description: "testPutPdfInStorageToPptx")
        let resFileName = "result.pptx"
        let outPath = "\(self.tempFolder)/\(resFileName)"
        
        uploadFile(name: fileName) {
            
            PdfAPI.putPdfInStorageToPptx(name: self.fileName, outPath: outPath, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutPdfInStorageToPptx")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testPutPdfInRequestToPptx() {
        
        let expectation = self.expectation(description: "testPutPdfInRequestToPptx")
        let resFileName = "result.pptx"
        let outPath = "\(self.tempFolder)/\(resFileName)"
        let file = getURL(fileName)
        
        PdfAPI.putPdfInRequestToPptx(outPath: outPath, file: file) {
            (response, error) in
            guard error == nil else {
                XCTFail("error testPutPdfInRequestToPptx")
                return
            }
            
            if let response = response {
                XCTAssertEqual(response.code, self.codeOk)
                
                expectation.fulfill()
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    //to TeX
    
    func testGetPdfInStorageToTeX() {
        
        let expectation = self.expectation(description: "testGetPdfInStorageToTeX")
        
        uploadFile(name: fileName) {
            
            PdfAPI.getPdfInStorageToTeX(name: self.fileName, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPdfInStorageToTeX")
                    return
                }
                
                if let response = response {
                    XCTAssertFalse(response.isEmpty)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testPutPdfInStorageToTeX() {
        
        let expectation = self.expectation(description: "testPutPdfInStorageToTeX")
        let resFileName = "result.tex"
        let outPath = "\(self.tempFolder)/\(resFileName)"
        
        uploadFile(name: fileName) {
            
            PdfAPI.putPdfInStorageToTeX(name: self.fileName, outPath: outPath, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutPdfInStorageToTeX")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testPutPdfInRequestToTeX() {
        
        let expectation = self.expectation(description: "testPutPdfInRequestToTeX")
        let resFileName = "result.tex"
        let outPath = "\(self.tempFolder)/\(resFileName)"
        let file = getURL(fileName)
        
        PdfAPI.putPdfInRequestToTeX(outPath: outPath, file: file) {
            (response, error) in
            guard error == nil else {
                XCTFail("error testPutPdfInRequestToTeX")
                return
            }
            
            if let response = response {
                XCTAssertEqual(response.code, self.codeOk)
                
                expectation.fulfill()
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    //to XML
    
    func testGetPdfInStorageToXml() {
        
        let expectation = self.expectation(description: "testGetPdfInStorageToXml")
        
        uploadFile(name: fileName) {
            
            PdfAPI.getPdfInStorageToXml(name: self.fileName, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPdfInStorageToXml")
                    return
                }
                
                if let response = response {
                    XCTAssertFalse(response.isEmpty)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testPutPdfInStorageToXml() {
        
        let expectation = self.expectation(description: "testPutPdfInStorageToXml")
        let resFileName = "result.xml"
        let outPath = "\(self.tempFolder)/\(resFileName)"
        
        uploadFile(name: fileName) {
            
            PdfAPI.putPdfInStorageToXml(name: self.fileName, outPath: outPath, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutPdfInStorageToXml")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testPutPdfInRequestToXml() {
        
        let expectation = self.expectation(description: "testPutPdfInRequestToXml")
        let resFileName = "result.xml"
        let outPath = "\(self.tempFolder)/\(resFileName)"
        let file = getURL(fileName)
        
        PdfAPI.putPdfInRequestToXml(outPath: outPath, file: file) {
            (response, error) in
            guard error == nil else {
                XCTFail("error testPutPdfInRequestToXml")
                return
            }
            
            if let response = response {
                XCTAssertEqual(response.code, self.codeOk)
                
                expectation.fulfill()
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    //to MOBI XML
    
    func testGetPdfInStorageToMobiXml() {
        
        let expectation = self.expectation(description: "testGetPdfInStorageToMobiXml")
        
        uploadFile(name: fileName) {
            
            PdfAPI.getPdfInStorageToMobiXml(name: self.fileName, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPdfInStorageToMobiXml")
                    return
                }
                
                if let response = response {
                    XCTAssertFalse(response.isEmpty)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testPutPdfInStorageToMobiXml() {
        
        let expectation = self.expectation(description: "testPutPdfInStorageToMobiXml")
        let resFileName = "result.mobi"
        let outPath = "\(self.tempFolder)/\(resFileName)"
        
        uploadFile(name: fileName) {
            
            PdfAPI.putPdfInStorageToMobiXml(name: self.fileName, outPath: outPath, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutPdfInStorageToMobiXml")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testPutPdfInRequestToMobiXml() {
        
        let expectation = self.expectation(description: "testPutPdfInRequestToMobiXml")
        let resFileName = "result.mobi"
        let outPath = "\(self.tempFolder)/\(resFileName)"
        let file = getURL(fileName)
        
        PdfAPI.putPdfInRequestToMobiXml(outPath: outPath, file: file) {
            (response, error) in
            guard error == nil else {
                XCTFail("error testPutPdfInRequestToMobiXml")
                return
            }
            
            if let response = response {
                XCTAssertEqual(response.code, self.codeOk)
                
                expectation.fulfill()
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    //XFA to Acro Form
    
    func testGetXfaPdfInStorageToAcroForm() {
        
        let expectation = self.expectation(description: "testGetXfaPdfInStorageToAcroForm")
        let name = "PdfWithXfaForm.pdf"
        
        uploadFile(name: name) {
            
            PdfAPI.getXfaPdfInStorageToAcroForm(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetXfaPdfInStorageToAcroForm")
                    return
                }
                
                if let response = response {
                    XCTAssertFalse(response.isEmpty)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testPutXfaPdfInStorageToAcroForm() {
        
        let expectation = self.expectation(description: "testPutXfaPdfInStorageToAcroForm")
        let name = "PdfWithXfaForm.pdf"
        let resFileName = "result.pdf"
        let outPath = "\(self.testDataFolder)/\(resFileName)"
        
        uploadFile(name: name) {
            
            PdfAPI.putXfaPdfInStorageToAcroForm(name: name, outPath: outPath, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutXfaPdfInStorageToAcroForm")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testPutXfaPdfInRequestToAcroForm() {
        
        let expectation = self.expectation(description: "testPutXfaPdfInRequestToAcroForm")
        let resFileName = "result.pdf"
        let outPath = "\(self.tempFolder)/\(resFileName)"
        let name = "PdfWithXfaForm.pdf"
        let file = getURL(name)
        
        PdfAPI.putXfaPdfInRequestToAcroForm(outPath: outPath, file: file) {
            (response, error) in
            guard error == nil else {
                XCTFail("error testPutXfaPdfInRequestToAcroForm")
                return
            }
            
            if let response = response {
                XCTAssertEqual(response.code, self.codeOk)
                
                expectation.fulfill()
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
