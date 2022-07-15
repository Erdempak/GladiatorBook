//
//  ViewController2.swift
//  SpartacusBook
//
//  Created by Erdem Papakçı on 14.07.2022.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var levelLabel: UILabel!
   
    var selectedGladiator : SpartacusObj?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = selectedGladiator?.name
        levelLabel.text = selectedGladiator?.power
        ImageView.image = selectedGladiator?.image
   
    }
    
}
