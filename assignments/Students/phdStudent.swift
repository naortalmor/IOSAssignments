//
//  phdStudent.swift
//  assignments
//
//  Created by Admin on 19 Kislev 5778.
//  Copyright © 5778 Naor. All rights reserved.
//

import Foundation

public class phdStudent: masterStudent {
    public var phdDegree: NSString
    
    public init(fName: NSString, lName: NSString, id: NSString, phoneNum: NSString,
                         mscDegree: NSString, thesis: NSString, phdDegree: NSString) {
        self.phdDegree = phdDegree
        super.init(fName: fName, lName: lName, id: id, phoneNum: phoneNum, mscDegree: mscDegree, thesis: thesis)
        
    }
}
