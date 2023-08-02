//
//  MessageVC.swift
//  Zomate
//
//  Created by apple on 24/07/2023.
//

import UIKit

class MessageVC: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "NewMatchesTVC", for: indexPath) as! NewMatchesTVC
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "AllMessagesTVC", for: indexPath) as! AllMessagesTVC
            return cell
        }
    }
}
