//
//  studentsDB.swift
//  assignments
//
//  Created by Admin on 18 Kislev 5778.
//  Copyright © 5778 Naor. All rights reserved.
//

import Foundation

public class studendsDB
{
    static let sharedInstance = studendsDB()
    public var students = [student]()
    
    public init() {
        
    }
    
    public func addStudent(studToAdd: student) {
        self.students.insert(studToAdd, at: 0)
    }
    
    public func getStudent (id: NSString) -> student? {
        for i in 0..<self.students.count{
            if students[i].id == id {
                return students[i]
            }
        }
        return nil
    }
    
    public func deleteStudent(id: NSString) {
        for i in 0..<self.students.count{
            if students[i].id == id {
                self.students.remove(at: i)
                break
            }
        }
    }
    
    public func updateStudent (studToUpdate: student){
        for i in 0..<self.students.count{
            if students[i].id == studToUpdate.id {
                students[i] = studToUpdate
            }
        }
    }
}
