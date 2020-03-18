//
//  ViewController.swift
//  WeatherEffectBD
//
//  Created by apple on 3/4/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signinbtn: UIButton!
    
    
    @IBOutlet weak var signupbtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func signupactn(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
               let controller = storyboard.instantiateViewController(withIdentifier: "RegVC")
               self.navigationController?.pushViewController(controller, animated: true)
    }
    
    @IBAction func signinactn(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(identifier: "LoginVC")
        self.navigationController?.pushViewController(controller, animated: true)
        
    }
}

