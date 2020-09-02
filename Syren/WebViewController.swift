//
//  WebViewController.swift
//  Syren
//
//  Created by Joshua Lim on 27/8/20.
//  Copyright © 2020 Joshua Lim. All rights reserved.
//

import UIKit
import WebKit
class WebViewController: UIViewController, WKUIDelegate {

    let data = Data()
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.text = "Emergency Contacts: \nPolice: \(data.countryPoliceNo)\nFire service: \(data.countryFireNo)\nAmbulance: \(data.countryAmbulanceNo)"
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
