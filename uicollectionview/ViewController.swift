//
//  ViewController.swift
//  uicollectionview
//
//  Created by Neosoft on 02/08/23.
//

import UIKit

struct details{
    var name : String
    var dep : String
    var descrip : String
}

class ViewController: UIViewController {

    var arr = [
        details(name: "saad", dep: "ios", descrip: "my name saad"),
        details(name: "omkar", dep: "ios", descrip: "my name omkar"),
        details(name: "chintan", dep: "ios", descrip: "my name chintan"),
        details(name: "matin", dep: "ios", descrip: "my name matin"),
        details(name: "saad", dep: "ios", descrip: "my name saad"),
        details(name: "omkar", dep: "ios", descrip: "my name omkar"),
        details(name: "chintan", dep: "ios", descrip: "my name chintan"),
        details(name: "matin", dep: "ios", descrip: "my name matin"),
        details(name: "saad", dep: "ios", descrip: "my name saad"),
        details(name: "omkar", dep: "ios", descrip: "my name omkar"),
        details(name: "chintan", dep: "ios", descrip: "my name chintan"),
        details(name: "matin", dep: "ios", descrip: "my name matin"),
    ]
    @IBOutlet weak var collectionview: UICollectionView!
    
    override func viewDidLoad() {
        navigationItem.title = "Employee"
        collectionview.delegate = self
        collectionview.dataSource = self
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

extension ViewController : UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        var cnt = arr[indexPath.row]
        cell.image.image = UIImage(named: cnt.name)
        cell.label.text = cnt.name
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (collectionView.frame.size.width - 10)/2
        return CGSize(width: size, height: size)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cnt = arr[indexPath.row]
        let vc = storyboard?.instantiateViewController(withIdentifier: "detailsViewController") as! detailsViewController
        vc.img = UIImage(named: cnt.name)
        vc.lbl = cnt.name
        navigationController?.pushViewController(vc, animated: true)
        
        
    }
}
