//
//  masterStudent.swift
//  assignments
//
//  Created by Admin on 18 Kislev 5778.
//  Copyright © 5778 Naor. All rights reserved.
//

import Foundation

public class masterStudent: student {
    public var mscDegree: NSString
    public var thesis: NSString
    
   public init(fName: NSString, lName: NSString, id: NSString, phoneNum: NSString,
               mscDegree: NSString, thesis: NSString) {
        self.mscDegree = mscDegree
        self.thesis    = thesis
        super.init(fName: fName, lName: lName, id: id, phoneNum: phoneNum)
    }
}


