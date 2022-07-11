//
//  TableViewCells3.swift
//  LivingstonProject
//
//  Created by Consultant on 7/10/22.
//

import UIKit

class TableViewCells3: UITableViewCell{

    @IBOutlet weak var ImageBox3: UIImageView!
    @IBOutlet weak var LabelBox3: UILabel!
    
    var indexPath:IndexPath?
    // may need one for a value
    
    
    
    func configure(imageStr: String, Name: String){
       
        self.ImageBox3.image = UIImage(named: imageStr)
        self.LabelBox3.text = "Cat: - \(imageStr)"}
    //end of configure

}
