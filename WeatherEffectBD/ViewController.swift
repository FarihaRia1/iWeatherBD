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
        
        buttonedit()
        // Do any additional setup after loading the view.
    }

    func buttonedit(){
        signinbtn.layer.cornerRadius = 10
        signinbtn.layer.shadowOffset = .zero
        signinbtn.layer.shadowOpacity = 1
        signinbtn.layer.shadowRadius = 3
        signinbtn.layer.shadowColor = UIColor.blue.cgColor
        signupbtn.layer.shadowOffset = .zero
        signupbtn.layer.shadowOpacity = 1
        signupbtn.layer.shadowRadius = 3
        signupbtn.layer.shadowColor = UIColor.systemIndigo.cgColor
        signupbtn.layer.cornerRadius = 10
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

