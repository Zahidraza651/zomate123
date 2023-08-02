//
//  MessageTVC.swift
//  Zomate
//
//  Created by apple on 28/07/2023.
//

import UIKit

class NewMatchesTVC: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var NewMatchesCVOutlet : UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        NewMatchesCVOutlet.delegate = self
        NewMatchesCVOutlet.dataSource = self
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
        let cell = self.NewMatchesCVOutlet.dequeueReusableCell(withReuseIdentifier: "NewMatchesCVC", for: indexPath) as! NewMatchesCVC
        return cell
    }

}
