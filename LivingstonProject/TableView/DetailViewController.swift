//
//  DetailViewController.swift
//  LivingstonProject
//
//  Created by Consultant on 7/10/22.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var Label1: UILabel!
    
    @IBOutlet weak var ImageBox2: UIImageView!
    
    @IBOutlet weak var Label2: UILabel!
    
    var img: String = "", info: String = "", name: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Label1.text = self.name
        Label2.text = self.info
        ImageBox2.image = UIImage(named: self.img)

        // Do any additional setup after loading the view.
    }
    
    
    // calling above into this function
    func configureDetail(imgStr: String, name: String, info: String){
    self.img = imgStr
    self.name = name
    self.info = info
    }

}
