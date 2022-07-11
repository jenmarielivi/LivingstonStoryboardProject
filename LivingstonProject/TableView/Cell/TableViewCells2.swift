//
//  TableViewCells2.swift
//  LivingstonProject
//
//  Created by Consultant on 7/10/22.
//

import UIKit

class TableViewCells2: UITableViewCell{

  

        @IBOutlet weak var ImageBox2: UIImageView!
        @IBOutlet weak var LabelBox2: UILabel!
        
        var indexPath:IndexPath?
        // may need one for a value
        
        
        
        func configure(imageStr: String, Name: String){
           
            self.ImageBox2.image = UIImage(named: imageStr)
            self.LabelBox2.text = "Cat: - \(imageStr)"
        }
}

