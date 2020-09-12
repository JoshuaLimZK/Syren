//
//  TabViewController.swift
//  Syren
//
//  Created by Joshua Lim on 11/9/20.
//  Copyright © 2020 Joshua Lim. All rights reserved.
//

import UIKit

class TabViewController: UITabBarController {

    var start = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(start)

        if start {
            self.selectedIndex = 1
        }
        
        // Do any additional setup after loading the view.
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
