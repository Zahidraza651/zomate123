//
//  OnlineSuggestionsTVC.swift
//  Zomate
//
//  Created by apple on 25/07/2023.
//

import UIKit

class OnlineSuggestionsTVC: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout  {
    
    @IBOutlet weak var OnlineCVOutlet : UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        OnlineCVOutlet.delegate = self
        OnlineCVOutlet.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.OnlineCVOutlet.dequeueReusableCell(withReuseIdentifier: "OnlineSuggestionsCVC", for: indexPath) as! OnlineSuggestionsCVC
        return cell
    }
    // MARK: - UICollectionViewDelegateFlowLayout methods

//        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//            // Calculate the size for each item based on the collection view width
//            let collectionViewWidth = collectionView.frame.width
//            let spacingBetweenItems: CGFloat = 90 // You can adjust this value as per your requirement
//            let totalSpacing = (spacingBetweenItems * 3) // 2 spacings between 2 items + 1 spacing at the beginning and end
//            let itemWidth = (collectionViewWidth - totalSpacing) / 2
//            let itemHeight = itemWidth // You can adjust the item height as needed
//
//            return CGSize(width: itemWidth, height: itemHeight)
//        }
}
