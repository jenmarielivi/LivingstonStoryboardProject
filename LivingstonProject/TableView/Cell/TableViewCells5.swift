//
//  TableViewCells5.swift
//  LivingstonProject
//
//  Created by Consultant on 7/10/22.
//

import UIKit

class TableViewCells5: UITableViewCell {
   
    @IBOutlet weak var ImageBox5: UIImageView!
    @IBOutlet weak var LabelBox5: UILabel!
    
    var indexPath:IndexPath?
    // may need one for a value
    
    
    
    func configure(imageStr: String, Name: String){
       
        self.ImageBox5.image = UIImage(named: imageStr)
        self.LabelBox5.text = "Cat: - \(imageStr)"
    }

}
