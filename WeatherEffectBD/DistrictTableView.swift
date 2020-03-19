//
//  DistrictTableView.swift
//  WeatherEffectBD
//
//  Created by apple on 3/18/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class DistrictTableView: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    var All_districts = ["Chittagong", "Rajshahi", "Khulna", "Barisal", "Sylhet", "Dhaka", "Rangpur" , "Mymensingh","Comilla", "Feni", "Brahmanbaria", "Rangamati", "Noakhali", "Chandpur", "Lakshmipur", "Chittagong", "Coxsbazar", "Khagrachhari", "Bandarban","Sirajganj", "Pabna", "Bogra", "Rajshahi", "Natore", "Joypurhat", "Chapainawabganj", "Naogaon", "Jhalakathi", "Patuakhali", "Pirojpur", "Barisal", "Bhola", "Barguna", "Jessore", "Satkhira", "Meherpur", "Narail", "Chuadanga", "Kushtia", "Magura", "Khulna", "Bagerhat", "Jhenaidah", "Sylhet", "Moulvibazar" , "Habiganj", "Sunamganj" ,"Narsingdi", "Gazipur", "Shariatpur", "Narayanganj", "Tangail", "Kishoreganj", "Manikganj", "Dhaka", "Munshiganj", "Rajbari", "Madaripur", "Gopalganj", "Faridpur","Panchagarh", "Dinajpur", "Lalmonirhat", "Nilphamari", "Gaibandha", "Thakurgaon", "Rangpur", "Kurigram","Sherpur", "Mymensingh", "Jamalpur", "Netrokona"]

    
    @IBOutlet weak var districtTV: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return All_districts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = All_districts[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.accessoryType = .none
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
