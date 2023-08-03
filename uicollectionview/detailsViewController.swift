//
//  detailsViewController.swift
//  uicollectionview
//
//  Created by Neosoft on 02/08/23.
//

import UIKit

class detailsViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageview: UIImageView!
    
    var lbl : String!
    var img : UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.label.text = lbl
        self.imageview.image = img
    }
    


}
