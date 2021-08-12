//
//  Cell.swift
//  CollectionView
//
//  Created by Илья Новиков on 12.08.2021.
//

import UIKit

class Cell: UICollectionViewCell {
    
    @IBOutlet weak var tempImage: UIImageView!
    @IBOutlet weak var smileImage: UIImageView!
    
    func setTempretureImage (tempName: String) {
        tempImage.image = UIImage(named: tempName)
    }
    
    func setSmileImage(smileName: String) {
        smileImage.image = UIImage(named: smileName)
    }

}
