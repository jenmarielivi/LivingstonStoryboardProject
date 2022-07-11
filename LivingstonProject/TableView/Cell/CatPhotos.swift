//
//  CatPhotos.swift
//  LivingstonProject
//
//  Created by Consultant on 7/10/22.
//

import Foundation

struct CatPhotos{
    
    // one for image, and name
    let Name: String
    let imageName: String
    let info: String
}


extension CatPhotos{
    
    static let Gideon = CatPhotos(Name: "cat", imageName: "Gideon", info: """
        Gideon descriptive text here
        """) // text needs to be on separates lines
    
    static let Gideon_BW = CatPhotos(Name: "Gideon_BW", imageName: "Gideon_BW", info: """
        some more descriptive text here
        """) //need three """
    
    static let Gideon_Sleeping = CatPhotos(Name: "Gideon_Sleeping", imageName: "Gideon_Sleeping", info: """
            even more descriptive text here
        """)
    
    static let Gatsby = CatPhotos(Name: "Gatsby", imageName: "Gatsby", info: """
            even more descriptive text here
        """)
    
    static let Gatsby2 = CatPhotos(Name: "Gatsby2", imageName: "Gatsby2", info: """
            even more descriptive text here
        """)
    
    
}
