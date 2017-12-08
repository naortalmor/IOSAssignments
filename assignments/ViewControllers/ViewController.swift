//
//  ViewController.swift
//  assignments
//
//  Created by Admin on 18 Kislev 5778.
//  Copyright © 5778 Naor. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    // Mark: Prop
    @IBOutlet var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Mark: Init data to the DB
        let studNaor: student = student(fName: "Naor", lName: "Talmor", id: "205789779", phoneNum: "0545336806")
        let studOr: student = student(fName: "Or", lName: "Shavit", id: "205781133", phoneNum: "0545691236")
        let phdStudNaor = phdStudent(fName: "Naor", lName: "Talmor", id: "123", phoneNum: "456", mscDegree: "Computers", thesis: "Science", phdDegree: "Cool")
        let mstrStudNaor = masterStudent(fName: "NaorMSTR", lName: "Talmor", id: "aaa", phoneNum: "bbb", mscDegree: "ccc", thesis: "ddd")
        studendsDB.sharedInstance.addStudent(studToAdd: studNaor)
        studendsDB.sharedInstance.addStudent(studToAdd: studOr)
        studendsDB.sharedInstance.addStudent(studToAdd: phdStudNaor)
        studendsDB.sharedInstance.addStudent(studToAdd: mstrStudNaor)
        
        tableview.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studendsDB.sharedInstance.students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =
            tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! ViewControllerUITableViewCell
        cell.firstNameLabel.text = studendsDB.sharedInstance.students[indexPath.row].fName as String
        cell.lastNameLabel.text = studendsDB.sharedInstance.students[indexPath.row].lName as String
        return cell
    }
}
