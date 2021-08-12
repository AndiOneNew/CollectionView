//
//  ShowImageVC.swift
//  CollectionView
//
//  Created by Илья Новиков on 12.08.2021.
//

import UIKit

class ShowImageVC: UIViewController {

    @IBOutlet weak var currentImage: UIImageView!
    var imageName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentImage.image = UIImage(named: imageName )
        
    }
    func setImage(name: String) {
       imageName = name
    }
}
