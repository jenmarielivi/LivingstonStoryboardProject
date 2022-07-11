//
//  TableViewCells4.swift
//  LivingstonProject
//
//  Created by Consultant on 7/10/22.
//

import UIKit

class TableViewCells4: UITableViewCell {

    @IBOutlet weak var ImageBox4: UIImageView!
    @IBOutlet weak var LabelBox4: UILabel!
    
    var indexPath:IndexPath?
    // may need one for a value
    
    
    
    func configure(imageStr: String, Name: String){
       
        self.ImageBox4.image = UIImage(named: imageStr)
        self.LabelBox4.text = "Cat: - \(imageStr)"
    }
}

