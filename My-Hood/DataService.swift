//
//  DataService.swift
//  My-Hood
//
//  Created by Héctor Moreno on 11/10/16.
//  Copyright © 2016 Héctor Moreno. All rights reserved.
//

import Foundation
import UIKit

class DataService {

    static let instance = DataService()
    
    private var _loadedPosts = [Post]()
    
    var loadedPosts: [Post]{
        return _loadedPosts
    }
    
    func savePosts() {
    
    }
    
    func loadPosts() {
    
    }
    
    func saveImageAndCreatePath(image: UIImage){
    
    }
    
    func imageForPath(path: String){
    
    }
}