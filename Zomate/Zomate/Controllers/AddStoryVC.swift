//
//  AddStoryVC.swift
//  Zomate
//
//  Created by apple on 24/07/2023.
//

import UIKit

class AddStoryVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var addStoryImg : UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func searchBtn (){}
    @IBAction func notificationBtn (){}
    @IBAction func filterBtn (){}
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "StoriesTVC", for: indexPath) as! StoriesTVC
            return cell
        }else if indexPath.section == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ButtonsTVC", for: indexPath) as! ButtonsTVC
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "OnlineSuggestionsTVC", for: indexPath) as! OnlineSuggestionsTVC
            return cell
        }
    }
}
