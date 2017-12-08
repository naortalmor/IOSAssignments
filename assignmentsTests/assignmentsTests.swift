//
//  assignmentsTests.swift
//  assignmentsTests
//
//  Created by Admin on 18 Kislev 5778.
//  Copyright © 5778 Naor. All rights reserved.
//

import XCTest
@testable import assignments

class assignmentsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func customTest() {
        let studNaor: student = student(fName: "Naor", lName: "Talmor", id: "205789779", phoneNum: "0545336806")
        let studOr: student = student(fName: "Or", lName: "Shavit", id: "205781133", phoneNum: "0545691236")   
        print("---------- First Assignment ----------")
        studendsDB.sharedInstance.addStudent(studToAdd: studOr)
        studendsDB.sharedInstance.addStudent(studToAdd: studNaor)
        print(studendsDB.sharedInstance.getStudent(id: "205789779")?.fName ?? "Default")
        print(studendsDB.sharedInstance.students.count)
        studendsDB.sharedInstance.deleteStudent(id: "205789779")
        print(studendsDB.sharedInstance.students.count)
        let studOrUpdated = student(fName: "Or", lName: "Shavit", id: "205781133", phoneNum: "0541234566")
        studendsDB.sharedInstance.updateStudent(studToUpdate: studOrUpdated)
        print(studendsDB.sharedInstance.getStudent(id: "205781133")?.phoneNum ?? "Default")
        print("---------- End of First Assignment ----------")
        print()
        print()
        
        let phdStudNaor = phdStudent(fName: "Naor", lName: "Talmor", id: "123", phoneNum: "456", mscDegree: "Computers", thesis: "Science", phdDegree: "Cool")
        let mstrStudNaor = masterStudent(fName: "NaorMSTR", lName: "Talmor", id: "aaa", phoneNum: "bbb", mscDegree: "ccc", thesis: "ddd")
        
        print("Hello \(phdStudNaor.fName) u have \(phdStudNaor.phdDegree) phd degree")
        print("Hello \(mstrStudNaor.fName) u have \(mstrStudNaor.thesis) Mastr thesis")
    }
    
}
