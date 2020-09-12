//
//  LessonNameViewController.swift
//  Syren
//
//  Created by Joshua Lim on 27/8/20.
//  Copyright © 2020 Joshua Lim. All rights reserved.
//

import UIKit
class LessonNameViewController: UIViewController {
    
    var lessonNo = 1
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(lessonNo)
        imageView.image = UIImage(named: "image\(lessonNo)")
        
        
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
