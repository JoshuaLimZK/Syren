//
//  StartingScreenViewController.swift
//  Syren
//
//  Created by Joshua Lim on 9/9/20.
//  Copyright © 2020 Joshua Lim. All rights reserved.
//

import UIKit

class StartingScreenViewController: UIViewController {

    var currentPageNo = 0
    
    @IBOutlet weak var currentPage: UIPageControl!
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        currentPage.currentPage = currentPageNo
        
        imageView.image = UIImage(named: "image\(currentPageNo)")
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextPressed(_ sender: Any) {
        
        if currentPageNo <= 3  {
            currentPageNo += 1
            currentPage.currentPage = currentPageNo
            imageView.image = UIImage(named: "image\(currentPageNo)")
        } else if currentPageNo == 4 {
            performSegue(withIdentifier: "back", sender: nil)
        }
        
    }
    
    @IBAction func previousPressed(_ sender: Any) {
        
        if currentPageNo >= 0{
            currentPageNo -= 1
            currentPage.currentPage = currentPageNo
            imageView.image = UIImage(named: "image\(currentPageNo)")
        }
        
    }
    
    @IBAction func pageControlChanged(_ sender: Any) {
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
