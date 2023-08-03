//
//  NewViewController.swift
//  uicollectionview
//
//  Created by Neosoft on 02/08/23.
//

import UIKit

class NewViewController: UIViewController {

    
    @IBOutlet weak var collectioview: UICollectionView!
    var arr = [Int]()
    override func viewDidLoad() {
        collectioview.delegate = self
        collectioview.dataSource = self
        super.viewDidLoad()

        for i in 1...60{
            arr.append(i)
        }
    }
}
extension NewViewController : UICollectionViewDelegate,UICollectionViewDataSource , UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cells", for: indexPath) as! mynCollectionViewCell
        
        cell.labeloutlet.text = String( arr[indexPath.row] )
        return cell
    }
    
    
}
