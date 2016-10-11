//
//  ViewController.swift
//  My-Hood
//
//  Created by Héctor Moreno on 10/10/16.
//  Copyright © 2016 Héctor Moreno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
     var posts = [Post]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        let post = Post(imagePath: "", title: "Post 1", description: "Post 1 description")
        let post2 = Post(imagePath: "", title: "Post 2", description: "Post 2 description")
        let post3 = Post(imagePath: "", title: "Post 3", description: "Post 3 description")
        
        posts.append(post)
        posts.append(post2)
        posts.append(post3)
        
        tableView.reloadData()
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 90.0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let post = posts[indexPath.row]
        if let cell = tableView.dequeueReusableCellWithIdentifier("PostCell") as? PostCell {
            cell.configureCell(post)
            return cell
        } else  {
            var cell = PostCell()
            cell.configureCell(post)
            return cell
        }
    }
    
    
}

