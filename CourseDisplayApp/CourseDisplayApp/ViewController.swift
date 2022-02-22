//
//  ViewController.swift
//  CourseDisplayApp
//
//  Created by Ganguru,Rohith Sai on 2/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayImage: UIImageView!
    
    @IBOutlet weak var courseNumber: UILabel!
    
    @IBOutlet weak var courseTitle: UILabel!
    
    @IBOutlet weak var courseSemester: UILabel!
    
    @IBOutlet weak var previousButton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    
    let courses = [["img01","44555","Network security","Fall 2022"],["img02","44643","IOS","Spring 2022"],["img03","44656","Data Streaming","Fall 2022"]]
    
    var imageNumber = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //The details of the course(image,crsNum,crsTitle,crsSem) in 0th position is displayed.
        updateUI(imageNumber)
        //The previous button should be disabled.
        previousButton.isEnabled = false
    }


    @IBAction func previousButtonClicked(_ sender: UIButton) {
        //next button should be enabled
        nextButton.isEnabled = true
        //update the course details by decrementing image number
        imageNumber -= 1
        updateUI(imageNumber)
        //previous button should be disabled after the reaching the index to 0
        if(imageNumber == 0){
            previousButton.isEnabled = false
        }
        
    }
    @IBAction func nextButtonClicked(_ sender: UIButton) {
        //update the UI of next course by incrementing the image number
        imageNumber += 1
        updateUI(imageNumber)
        //previous button should be enabled
        previousButton.isEnabled = true
        //once the user reach the end of array the next should be disbaled
        if(imageNumber == courses.count-1){
        nextButton.isEnabled = false
        }
    }
    
    func updateUI(_ imageNum:Int){
        displayImage.image = UIImage(named: courses[imageNum][0])
        courseNumber.text = courses[imageNum][1]
        courseTitle.text = courses[imageNum][2]
        courseSemester.text = courses[imageNum][3]
    }
}

