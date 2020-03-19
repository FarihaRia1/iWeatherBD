//
//  LoginVC.swift
//  WeatherEffectBD
//
//  Created by apple on 3/8/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var signupp: UIButton!
    @IBOutlet weak var loginbtn: UIButton!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var email: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonEdt()
        // Do any additional setup after loading the view.
    }
    func  buttonEdt(){
       loginbtn.layer.cornerRadius = 10
       loginbtn.layer.shadowOffset = .zero
       loginbtn.layer.shadowOpacity = 1
       loginbtn.layer.shadowRadius = 3
       loginbtn.layer.shadowColor = UIColor.blue.cgColor
        
       signupp.layer.cornerRadius = 10
       signupp.layer.shadowOffset = .zero
       signupp.layer.shadowOpacity = 1
       signupp.layer.shadowRadius = 3
       signupp.layer.shadowColor = UIColor.blue.cgColor
            }

    @IBAction func loginactn(_ sender: UIButton) {
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
