//
//  student.swift
//  assignments
//
//  Created by Admin on 18 Kislev 5778.
//  Copyright © 5778 Naor. All rights reserved.
//

import Foundation

public class student
{
    public var fName:    NSString
    public var lName:    NSString
    public var id:       NSString
    public var phoneNum: NSString
    
    public init(fName: NSString, lName: NSString, id: NSString, phoneNum: NSString) {
        self.fName    = fName
        self.lName    = lName
        self.id       = id
        self.phoneNum = phoneNum
    }
}

