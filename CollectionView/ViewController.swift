//
//  ViewController.swift
//  CollectionView
//
//  Created by Илья Новиков on 12.08.2021.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    @IBOutlet weak var collectionViewOne: UICollectionView!
    @IBOutlet weak var collectionViewTwo: UICollectionView!
    let arrayTemp = ["temp.red","temp.orange","temp.lightYellow","temp.lightYellow","temp.darkYellow","temp.blackGreen"]
    let arraySmile = ["favorite","nice","notPleasant","routine","bad","hate"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewOne.dataSource = self
        collectionViewOne.delegate = self
        collectionViewTwo.dataSource = self
        collectionViewTwo.delegate = self
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "ShowImageVC") as? ShowImageVC else { return }
        var currentSelectedImage: String!
        if collectionView == collectionViewOne {
            currentSelectedImage = arrayTemp[indexPath.row]
        }
        if collectionView == collectionViewTwo {
            currentSelectedImage = arraySmile[indexPath.row]
        }
        vc.setImage(name: currentSelectedImage)
        present(vc, animated: true, completion: nil)
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == collectionViewOne {
            return arrayTemp.count
        }
        if collectionView == collectionViewTwo {
            return arraySmile.count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == collectionViewOne {
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellOne", for: indexPath) as? Cell {
                let imageName = arrayTemp[indexPath.row]
                cell.setTempretureImage(tempName: imageName)
                return cell
            }
        }
        if collectionView == collectionViewTwo{
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellTwo", for: indexPath) as? Cell {
                let imageName = arraySmile[indexPath.row]
                cell.setSmileImage(smileName: imageName)
                return cell
            }
        }
        return UICollectionViewCell()
    }
}

