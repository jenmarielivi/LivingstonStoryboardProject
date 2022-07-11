//
//  ViewControllerPage.swift
//  LivingstonProject
//
//  Created by Consultant on 7/10/22.
//

import UIKit

class ViewControllerPage: UIViewController {

    @IBOutlet weak var tableViewCat: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableViewCat.backgroundColor = .systemBlue
        
        
        self.tableViewCat.dataSource = self
        self.tableViewCat.delegate = self
        
        self.tableViewCat.register(UINib(nibName: "TableViewCells", bundle: nil), forCellReuseIdentifier: "TableViewCells")
       //?
    }
    
    
    var nameOfCat: String?
    var Img1: String? //Might already be using Img somewhere. Img1 to distinguish difference
    var info: String? //can't use info.. already a set funcion
    var n=0


}


extension ViewControllerPage: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case n:
            nameOfCat = CatPhotos.Gideon.Name
            Img1 = CatPhotos.Gideon.imageName
            info = CatPhotos.Gideon.info
            
        case n+1:
            nameOfCat = CatPhotos.Gideon_BW.Name
            Img1 = CatPhotos.Gideon_BW.imageName
            info = CatPhotos.Gideon_BW.info
            
        case n+2:
            nameOfCat = CatPhotos.Gideon_Sleeping.Name
            Img1 = CatPhotos.Gideon_Sleeping.imageName
            info = CatPhotos.Gideon_Sleeping.info
            
        case n+3:
            nameOfCat = CatPhotos.Gatsby.Name
            Img1 = CatPhotos.Gatsby.imageName
            info = CatPhotos.Gatsby.info
            
        case n+4:
            nameOfCat = CatPhotos.Gatsby2.Name
            Img1 = CatPhotos.Gatsby2.imageName
            info = CatPhotos.Gatsby2.info
            
        default:
            
            nameOfCat = CatPhotos.Gideon.Name
            Img1 = CatPhotos.Gideon.imageName
            info = CatPhotos.Gideon.info
        
        }
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        // set to Main. may need, else nil
        
        //why is segue so hard to spell?
        //segway. not how its spelled but how i want to spell it
        
        //the other half of seguecontroller
        guard let vc = storyBoard.instantiateViewController(withIdentifier: "NonsegueViewController") as? NonsegueViewController else {return}
        
        
        //figure out this. why do we use this syntax. What is the purpose of ?? ""
        // should I use something other than info?
        vc.configure2(imageStr: Img1 ?? "", AName: nameOfCat ?? "", Info: info ?? "")
        self.navigationController?.pushViewController(vc, animated: true) // push stack
      //  var nameOfCat: String?
      //  var Img1: String? //Might already be using Img somewhere for an image. Img1 to distinguish difference
      //  var info: String?
        
        
    }// end of switch indexPath.row
}// end of func tableView

extension ViewControllerPage: UITableViewDataSource{
   
    func numberOfSections(in tableView: UITableView) -> Int{// there are 7 sections
    return 7
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
    //while n < less indexPath.row

        while n<indexPath.row{
        if indexPath.row == n{
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCells", for: indexPath) as? TableViewCells else{
            return UITableViewCell()
        }
            cell.configure(imageStr: "Gideon", Name: "Gideon")//Cat may need to be changed to Gideon
                return cell
        }
        
        else if indexPath.row == n+1{
            guard let cell2 = tableView.dequeueReusableCell(withIdentifier: "TableViewCells2", for: indexPath) as? TableViewCells2 else{
                return UITableViewCell()
            }
                    cell2.configure(imageStr: "Gideon_BW", Name: "cat")
                    return cell2
            }
        
        else if indexPath.row == n+2{
            guard let cell3 = tableView.dequeueReusableCell(withIdentifier: "TableViewCells3", for: indexPath) as? TableViewCells3 else{
                return UITableViewCell()
            }
                    cell3.configure(imageStr: "Gideon_sleeping", Name: "Gideon_sleeping")
                    return cell3
        }
        else if indexPath.row == n+3{
            guard let cell4 = tableView.dequeueReusableCell(withIdentifier: "TableViewCells4", for: indexPath) as? TableViewCells4 else{
                return UITableViewCell()
            }
                    cell4.configure(imageStr: "Gatsby", Name: "Gatsby")
                    return cell4
        }
        
        else if indexPath.row == n+4{
            guard let cell5 = tableView.dequeueReusableCell(withIdentifier: "TableViewCells5", for: indexPath) as? TableViewCells5 else{
                return UITableViewCell()
            }// end of else
                
            cell5.configure(imageStr: "Gatsby2", Name: "Gatsby2")
            return cell5
            
            n=n+5 //only 5 pictures. 6th one to restart?
            }// end of elseif indexPath.row == n+5
            
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCells", for: indexPath) as? TableViewCells else{
            return UITableViewCell() //either UITableViewCells() or TableViewCell
            
            }
            cell.configure(imageStr: "Gideon", Name: "Gideon")  //reset
            return cell
    }// end of while loop
}

}

