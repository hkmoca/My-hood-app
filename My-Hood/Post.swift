//
//  Post.swift
//  My-Hood
//
//  Created by Héctor Moreno on 10/10/16.
//  Copyright © 2016 Héctor Moreno. All rights reserved.
//

import Foundation

class Post {
    private var imagePath: String
    private var title: String
    private var postDesc: String
    
    
    init(imagePath: String, title: String, description: String){
        self.imagePath = imagePath
        self.title = title
        self.postDesc = description 
    
    }

}