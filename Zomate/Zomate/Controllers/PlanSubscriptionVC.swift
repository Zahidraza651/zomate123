//
//  PlanSubscriptionVC.swift
//  Zomate
//
//  Created by apple on 28/07/2023.
//

import UIKit

class PlanSubscriptionVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AllPlanTVC", for: indexPath) as! AllPlanTVC
        return cell
    }

}
