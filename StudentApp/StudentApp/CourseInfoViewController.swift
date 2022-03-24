//
//  CourseInfoViewController.swift
//  StudentApp
//
//  Created by Ganguru,Rohith Sai on 3/24/22.
//

import UIKit

class CourseInfoViewController: UIViewController {
    
    @IBOutlet weak var courseOutlet: UILabel!
    var coursesArray:[Course] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        for course in coursesArray {
            courseOutlet.text = courseOutlet.text! + course.title + "-" + course.sem + "-" + course.courseNum + "\n"
        }
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
