//
//  RegVC.swift
//  WeatherEffectBD
//
//  Created by apple on 3/8/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class RegVC: UIViewController {

    @IBOutlet weak var mobile: UITextField!
    @IBOutlet weak var submitbtn: UIButton!
  
    @IBOutlet weak var district: UIButton!
    @IBOutlet weak var locatn: UITextField!
    @IBOutlet weak var confirmpass: UITextField!
    @IBOutlet weak var pass: UITextField!
    @IBOutlet weak var gender: UITextField!
    @IBOutlet weak var mail: UITextField!
    @IBOutlet weak var lname: UITextField!
    @IBOutlet weak var fname: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        Buttonediting()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func submitactn(_ sender: UIButton) {
        print("submitbtn")
        postdata()
    }
    
    func Buttonediting(){
        submitbtn.layer.cornerRadius = 10
        submitbtn.layer.shadowOffset = .zero
        submitbtn.layer.shadowOpacity = 1
        submitbtn.layer.shadowRadius = 3
        submitbtn.layer.shadowColor = UIColor.blue.cgColor
        district.layer.cornerRadius = 10
        district.layer.shadowOffset = .zero
        district.layer.shadowOpacity = 1
        district.layer.shadowRadius = 3
        district.layer.shadowColor = UIColor.blue.cgColor
    }
    
    func postdata(){
        func postdata(){
            let parameters = ["FirstName": fname.text!,"LastName":lname.text!,"mobile":mobile.text!,"email":mail.text!,"gender":gender.text!,"district":confirmpass.text!,"location":locatn.text!, "password": pass.text!] as [String : Any]
            //let parameters = ["mobile":"01742011644", "password": "123456"] as [String : Any]
            
            //create the url with URL
            let url = URL(string: "http://192.168.0.30/bdweather/API/registration.php")! //change the url
            
            //create the session object
            let session = URLSession.shared
            
            //now create the URLRequest object using the url object}
            var request = URLRequest(url: url)
            request.httpMethod = "POST" //set http method as POST
            
            do {
                request.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted) // pass dictionary to nsdata object and set it as request body
            } catch let error {
                print(error.localizedDescription)
            }
            
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            request.addValue("application/json", forHTTPHeaderField : "Accept")
            
            //create dataTask using the session object to send data to the server
            
            //create dataTask using the session object to send data to the server
        let task = session.dataTask(with: request as URLRequest, completionHandler: { data, response, error in
            
            guard error == nil else {
                return
            }
            
            guard let data = data else {
                
                return
            }
            
            do {
                print(data)
                //create json object from data
                if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] {
                    print(json)
                    // handle json...
                }
            } catch let error {
                
                print(error.localizedDescription)
            }
        })
        task.resume()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sende vr: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
