//
//  HomeViewController.swift
//  Syren
//
//  Created by Joshua Lim on 18/8/20.
//  Copyright © 2020 Joshua Lim. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    let defaults = UserDefaults.standard
    @IBOutlet weak var cool: UINavigationItem!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var buttons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //create a new button
        //assign button to navigationbar
        self.cool.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "bell.fill"), style: .plain, target: nil, action: #selector(buttonTapped))
        
        buttons[0].layer.shadowColor = UIColor.black.cgColor
        buttons[0].layer.shadowOffset = CGSize(width: 2, height: 2)
        buttons[0].layer.shadowRadius = 5
        buttons[0].layer.shadowOpacity = 0.5
        buttons[0].layer.cornerRadius = 10
        buttons[0].contentHorizontalAlignment = .center

        buttons[1].layer.shadowColor = UIColor.black.cgColor
        buttons[1].layer.shadowOffset = CGSize(width: 2, height: 2)
        buttons[1].layer.shadowRadius = 5
        buttons[1].layer.shadowOpacity = 0.5
        buttons[1].layer.cornerRadius = 10
        buttons[1].contentHorizontalAlignment = .center

    }

    //This method will call when you press button.
    @objc func fbButtonPressed() {

        print("Share to fb")
    }
    
    override func viewDidAppear(_ animated: Bool) {

        
        var hasAlreadyLaunched :Bool!
        
        
        hasAlreadyLaunched = UserDefaults.standard.bool(forKey: "hasAlreadyLaunched")//check first launched
        if (hasAlreadyLaunched) {
            
            hasAlreadyLaunched = true
            
            print("second+")
            
            
        } else {
            
            UserDefaults.standard.set(true, forKey: "hasAlreadyLaunched")
            print("First")
            seguePerform()
        }
        
    }

    func seguePerform() {
        performSegue(withIdentifier: "firstStart", sender: nil)
    }
    
    @objc func buttonTapped(){
        performSegue(withIdentifier: "showNotifs", sender: nil)
    }

    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "disaster" {
            let tabViewController = segue.destination as! TabViewController
            tabViewController.start = false
            tabViewController.selectedIndex = 0
            
        }
        
        if segue.identifier == "lesson" {
            let tabViewController = segue.destination as! TabViewController
            tabViewController.start = false
            tabViewController.selectedIndex = 2
        }
        
    }
    

}
