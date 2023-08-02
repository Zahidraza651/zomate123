//
//  ProfileTVC.swift
//  Zomate
//
//  Created by apple on 26/07/2023.
//

import UIKit

class BioTVC: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    
    

    @IBOutlet weak var BioCVOutlet : UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        BioCVOutlet.delegate = self
        BioCVOutlet.dataSource = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.BioCVOutlet.dequeueReusableCell(withReuseIdentifier: "BioCVC", for: indexPath) as! BioCVC
        return cell
    }

}
