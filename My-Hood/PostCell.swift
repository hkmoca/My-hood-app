//
//  PostCell.swift
//  My-Hood
//
//  Created by Héctor Moreno on 10/10/16.
//  Copyright © 2016 Héctor Moreno. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureCell(post: Post){
        titleLbl.text = post.title
        descLbl.text = post.postDesc
    }
   
}
