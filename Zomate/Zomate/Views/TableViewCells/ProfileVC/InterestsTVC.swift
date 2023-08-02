//
//  InterestsTVC.swift
//  Zomate
//
//  Created by apple on 26/07/2023.
//

import UIKit

class InterestsTVC: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    
    

    @IBOutlet weak var InterestsCVOutlet : UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        InterestsCVOutlet.delegate = self
        InterestsCVOutlet.dataSource = self
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.InterestsCVOutlet.dequeueReusableCell(withReuseIdentifier: "InterestsCVC", for: indexPath) as! InterestsCVC
        return cell
    }

}
