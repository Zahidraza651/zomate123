//
//  ProfileVC.swift
//  Zomate
//
//  Created by apple on 24/07/2023.
//

import UIKit

class ProfileVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


    // MARK: - Navigation

    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return 1
     }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         if indexPath.section == 0{
             let cell = tableView.dequeueReusableCell(withIdentifier: "BioTVC", for: indexPath) as! BioTVC
             return cell
         }else{
             let cell = tableView.dequeueReusableCell(withIdentifier: "InterestsTVC", for: indexPath) as! InterestsTVC
             return cell
         }
     }
}
