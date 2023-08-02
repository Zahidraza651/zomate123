//
//  StoriesTVC.swift
//  Zomate
//
//  Created by apple on 25/07/2023.
//

import UIKit

class StoriesTVC: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var StoriesCVOutlet: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        StoriesCVOutlet.delegate = self
        StoriesCVOutlet.dataSource = self
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell  = self.StoriesCVOutlet.dequeueReusableCell(withReuseIdentifier: "StoriesCVC", for: indexPath) as! StoriesCVC
        return cell
    }
    
}
