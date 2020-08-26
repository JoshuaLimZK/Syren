//
//  DiasasterInfoViewController.swift
//  Syren
//
//  Created by Joshua Lim on 20/8/20.
//  Copyright © 2020 Joshua Lim. All rights reserved.
//

import UIKit

class DisasterInfoViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    var listOfContacts = ["123"]
    
    override func viewDidLoad() {
        super.viewDidLoad()        
        // Do any additional setup after loading the view.
        textView.text = "Emergency Contacts: \nPolice: \(listOfContacts[0])\nFire service: \(321)"
        
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
