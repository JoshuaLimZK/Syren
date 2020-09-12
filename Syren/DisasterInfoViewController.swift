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
    let data = Data()
    var currentCountry = 0
    var originalCountryNo = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()        
        // Do any additional setup after loading the view.
        
        print("original country number: \(currentCountry)")
        textView.text = "Emergency Contacts: \nPolice: \(data.countryPoliceNo[currentCountry])\nFire service:\(data.countryFireNo[currentCountry])\nAmbulance:\(data.countryAmbulanceNo[currentCountry]) \n\n\(data.facts[currentCountry])"
    
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
