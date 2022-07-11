//
//  TableViewCells.swift
//  LivingstonProject
//
//  Created by Consultant on 7/10/22.
//

import UIKit

class TableViewCells: UITableViewCell {

    @IBOutlet weak var ImageBox: UIImageView!
    @IBOutlet weak var LabelBox: UILabel!
    
    var indexPath:IndexPath?
    // may need one for a value
    
    
    
    func configure(imageStr: String, Name: String){
       
        self.ImageBox.image = UIImage(named: imageStr)
        self.LabelBox.text = "Cat - \(imageStr)"
    }
}
