//
//  Student.swift
//  StudentApp
//
//  Created by Ganguru,Rohith Sai on 3/24/22.
//

import Foundation

struct Student {
    var name = ""
    var sid = ""
    var email = ""
    var gpa = ""
    
    var courses:[Course] = []
}
    struct Course {
        var title = ""
        var sem = ""
        var courseNum = ""
    }

let student1 = Student(name:"Rohith",sid:"s1234",email: "s1234@gmail.com",gpa: "4.0",
                     courses:[
                        Course(title:"Mobile Computing",sem:"sp22",courseNum:"01"),
                        Course(title:"Data Structures",sem:"sp22",courseNum:"02"),
                        Course(title:"Big Data",sem:"sp22",courseNum:"03")
                     ])


let student2 = Student(name:"Varun",sid:"s5678",email: "s5678@gmail.com",gpa: "3.9",
                     courses:[
                        Course(title:"Design Patterns",sem:"fa21",courseNum:"04"),
                        Course(title:"GDP1",sem:"fa21",courseNum:"05"),
                        Course(title:"Java",sem:"sp21",courseNum:"06")
                     ])


let student3 = Student(name:"Jeevan",sid:"s6789",email: "s6789@gmail.com",gpa: "3.5",
                     courses:[
                        Course(title:"Design Patterns",sem:"fa21",courseNum:"04"),
                        Course(title:"GDP2",sem:"fa21",courseNum:"07"),
                        Course(title:"Java",sem:"fa21",courseNum:"06")
                     ])


let students = [student1,student2,student3]

