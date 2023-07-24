//
//  LikeInterestVC.swift
//  Zomate
//
//  Created by apple on 19/07/2023.
//

import UIKit

class LikeInterestVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    @IBOutlet weak var collectionViewOL : UICollectionView!
    
    var iconImagesArr = ["PhotographyIcon","CookingIcon", "VideoGameIcon", "MusicIcon", "TavellingIcon", "ShoppingIcon", "SpeechesIcon", "ArtCraft", "ArtCraft", "drinkingIcon", "XtremeSportsIcon", "icon"]
    var descriptonArr = ["Photography", "Cooking", "Video Games", "Music", "Travelling", "Shopping", "Speeches", "Art & Crafts", "Swimming", "Drinking", "Extreme Sports", "Fitness"]
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    // CollectionView Delegates
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return iconImagesArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionViewOL.dequeueReusableCell(withReuseIdentifier: "LikeInterestCVC", for: indexPath) as! LikeInterestCVC
        cell.img.image = UIImage(named: "\(iconImagesArr[indexPath.row])")
        cell.descriptionLbl.text = "\(descriptonArr[indexPath.row])"
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let noOfCellsInRow = 2   //number of column you want
          let flowLayout = collectionViewLayout as! UICollectionViewFlowLayout
          let totalSpace = flowLayout.sectionInset.left
              + flowLayout.sectionInset.right
              + (flowLayout.minimumInteritemSpacing * CGFloat(noOfCellsInRow - 1))

          let size = Int((collectionView.bounds.width - totalSpace) / CGFloat(noOfCellsInRow))
          return CGSize(width: size, height: 50)
            
        }
    
}
