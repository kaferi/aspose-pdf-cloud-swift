/**
 *
 *   Copyright (c) 2018 Aspose.PDF Cloud
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

class HighlightAnnotationsTests: AsposePdfCloudTests {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    
    func testGetDocumentHighlightAnnotations() {
        let name = "PdfWithAnnotations.pdf"
        
        let expectation = self.expectation(description: "testGetDocumentHighlightAnnotations")
        
        uploadFile(name: name) {
            
            PdfAPI.getDocumentHighlightAnnotations(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetDocumentHighlightAnnotations")
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
    
    
    func testGetPageHighlightAnnotations() {
        let name = "PdfWithAnnotations.pdf"
        
        let pageNumber = 2
        let expectation = self.expectation(description: "testGetPageHighlightAnnotations")
        
        uploadFile(name: name) {
            
            PdfAPI.getPageHighlightAnnotations(name: name, pageNumber: pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPageHighlightAnnotations")
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
    
    
    func testGetHighlightAnnotation() {
        let name = "PdfWithAnnotations.pdf"
        
        let expectation = self.expectation(description: "testGetHighlightAnnotation")
        
        uploadFile(name: name) {
            
            PdfAPI.getDocumentHighlightAnnotations(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetDocumentHighlightAnnotations")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    if let annotations = response.annotations, let list = annotations.list, let annotationId = list[0].id {
                        
                        PdfAPI.deleteAnnotation(name: name, annotationId: annotationId, folder: self.tempFolder) {
                            (response, error) in
                            guard error == nil else {
                                XCTFail("error testGetHighlightAnnotation")
                                return
                            }
                            
                            if let response = response {
                                XCTAssertEqual(response.code, self.codeOk)
                                
                                expectation.fulfill()
                            }
                        }
                    } else {
                        XCTFail("error testGetDocumentHighlightAnnotations")
                    }
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testPostPageHighlightAnnotations() {
        let name = "PdfWithAnnotations.pdf"
        
        let pageNumber = 1
        let expectation = self.expectation(description: "testPostPageHighlightAnnotations")
        
        let annotation = HighlightAnnotation(
            links: nil,
            color: nil, contents: nil,
            modified: "01/01/2018 00:00:00.000 AM",
            id: nil, flags: [AnnotationFlags._default],
            name: "Name",
            rect: Rectangle(LLX: 100, LLY: 100, URX: 200, URY: 200),
            pageIndex: nil,
            zIndex: 1,
            horizontalAlignment: HorizontalAlignment.center,
            verticalAlignment: VerticalAlignment._none,
            creationDate: nil,
            subject: "Subject",
            title: "Title",
            richText: "Rich Text",
            quadPoints: [
                Point(X: 10, Y: 10),
                Point(X: 20, Y: 10),
                Point(X: 10, Y: 20),
                Point(X: 10, Y: 10)
            ]
        )
        
        uploadFile(name: name) {
            
            PdfAPI.postPageHighlightAnnotations(name: name, pageNumber: pageNumber, annotations: [annotation], folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostPageHighlightAnnotations")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeCreated)
                    
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testPutHighlightAnnotation() {
        let name = "PdfWithAnnotations.pdf"
        
        let expectation = self.expectation(description: "testPutHighlightAnnotation")
        
        let annotation = HighlightAnnotation(
            links: nil,
            color: Color(A: 0xFF, R: 0, G: 0xFF, B: 0),
            contents: nil,
            modified: "01/01/2018 00:00:00.000 AM",
            id: nil,
            flags: [AnnotationFlags._default],
            name: "Name Updated",
            rect: Rectangle(LLX: 100, LLY: 100, URX: 200, URY: 200),
            pageIndex: nil,
            zIndex: 1,
            horizontalAlignment: HorizontalAlignment.center,
            verticalAlignment: nil,
            creationDate: nil,
            subject: "Subject Updated",
            title: "Title Updated",
            richText: "Rich Text Updated",
            quadPoints: [
                Point(X: 10, Y: 10),
                Point(X: 20, Y: 10),
                Point(X: 10, Y: 20),
                Point(X: 10, Y: 10)
            ]
        )
        
        uploadFile(name: name) {
            PdfAPI.getDocumentHighlightAnnotations(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetDocumentHighlightAnnotations")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    if let annotations = response.annotations, let list = annotations.list, let annotationId = list[0].id {
                        
                        PdfAPI.putHighlightAnnotation(name: name, annotationId: annotationId, annotation: annotation, folder: self.tempFolder) {
                            (response, error) in
                            guard error == nil else {
                                XCTFail("error testPutHighlightAnnotation")
                                return
                            }
                            
                            if let response = response {
                                XCTAssertEqual(response.code, self.codeCreated)
                                
                                expectation.fulfill()
                            }
                        }
                    } else {
                        XCTFail("error testGetDocumentHighlightAnnotations")
                    }
                }
            }
            
            
            
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
