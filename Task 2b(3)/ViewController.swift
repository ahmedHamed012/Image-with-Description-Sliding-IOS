//
//  ViewController.swift
//  Task 2b(3)
//
//  Created by Ahmed Hamed on 24/10/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageShow: UIImageView!
    @IBOutlet weak var imageInfo: UILabel!
    struct Gallery {
        var imageName: String
        var imageDesc: String
    }
    let destinations : [Gallery] = [Gallery(imageName: "img-1", imageDesc: "Egypt  is Very Old"),Gallery(imageName: "img-3", imageDesc: "Egypt Has Many Places To Visit !"),Gallery(imageName: "img-2", imageDesc: "Pyramids Is one Of The Most Beautiful Places !"),Gallery(imageName: "img-4", imageDesc: "Lets Take a tour around Egypt!")]
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageInfo.text = "Welcome To EGYPT !"
    }
    @IBAction func nxtBtn(_ sender: Any) {
            imageShow.image = UIImage(named: destinations[counter].imageName)
            imageInfo.text = destinations[counter].imageDesc
        counter = (counter+1) % destinations.count
    }
    
    @IBAction func prevBtn(_ sender: Any) {
        imageShow.image = UIImage(named: destinations[counter].imageName)
        imageInfo.text = destinations[counter].imageDesc
        counter = (counter-1+destinations.count) % destinations.count
    }
}
