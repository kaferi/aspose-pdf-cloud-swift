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

class SignTests: AsposePdfCloudTests {
    
    private let fileName = "BlankWithSignature.pdf"
    private let signatureName = "test1234.pfx"
    private var signature: Signature?
    
    override func setUp() {
        super.setUp()
        
        signature = Signature(
            signaturePath: "\(self.tempFolder)/\(signatureName)",
            signatureType: SignatureType.pkcs7,
            password: "test1234",
            appearance: nil,
            reason: nil,
            contact: "test@mail.ru",
            location: "Ukraine",
            visible: true,
            rectangle: Rectangle(LLX: 100, LLY: 100, URX: 500, URY: 200),
            formFieldName: "Signature1",
            authority: "Sergey Smal",
            date: "08/01/2012 12:15:00.000 PM",
            showProperties: false,
            timestampSettings: nil,
            isValid: nil,
            customAppearance: nil)
    }
    
    func testPostSignDocument() {
        let expectation = self.expectation(description: "testPostSignDocument")
        
        uploadFiles(names: [self.fileName, signatureName]) {
 
            PdfAPI.postSignDocument(name: self.fileName, sign: self.signature!, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostSignDocument: " + (error.debugDescription))
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
    
    
    func testPagesPostSignPage() {
        let expectation = self.expectation(description: "PagesPostSignPage")
        
        uploadFiles(names: [self.fileName, signatureName]) {
            
            PdfAPI.postSignPage(name: self.fileName, pageNumber: 1, sign: self.signature!, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error PagesPostSignPage: " + (error.debugDescription))
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
    
    
    func testGetVerifySignature() {
        let expectation = self.expectation(description: "testGetVerifySignature")
        
        uploadFiles(names: [self.fileName, signatureName]) {
            
            PdfAPI.postSignDocument(name: self.fileName, sign: self.signature!, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error try to postSignDocument: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    PdfAPI.getVerifySignature(name: self.fileName, signName: (self.signature?.formFieldName)!,  folder: self.tempFolder) {
                        (response, error) in
                        guard error == nil else {
                            XCTFail("error testGetVerifySignature: " + (error.debugDescription))
                            return
                        }
                        
                        if let response = response {
                            XCTAssertEqual(response.code, self.codeOk)
                            
                            expectation.fulfill()
                        }
                    }
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testPostPageCertify() {
        let expectation = self.expectation(description: "testPostPageCertify")
        let name = "4pages.pdf"
        let signatureFile = "33226.p12"
        let permissionType = DocMDPAccessPermissionType.noChanges
        
        let signatureForCertify = Signature(
            signaturePath: "\(self.tempFolder)/\(signatureFile)",
            signatureType: SignatureType.pkcs7,
            password: "sIikZSmz",
            appearance: nil,
            reason: nil,
            contact: "test@mail.ru",
            location: "Ukraine",
            visible: true,
            rectangle: Rectangle(LLX: 100, LLY: 100, URX: 500, URY: 200),
            formFieldName: "Signature1",
            authority: "Sergey Smal",
            date: "08/01/2012 12:15:00.000 PM",
            showProperties: false,
            timestampSettings: nil,
            isValid: nil,
            customAppearance: nil)
        
        uploadFiles(names: [name, signatureFile]) {
            
            PdfAPI.postPageCertify(name: name, pageNumber: 1, sign: signatureForCertify, docMdpAccessPermissionType: permissionType.rawValue, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostPageCertify: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    expectation.fulfill()
                }
            }
            
        }
        
        self.waitForExpectations(timeout: 120.0, handler: nil)
    }
}
