//
//  AddPostVC.swift
//  My-Hood
//
//  Created by Héctor Moreno on 10/10/16.
//  Copyright © 2016 Héctor Moreno. All rights reserved.
//

import UIKit

class AddPostVC: UIViewController {

    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var descriptionField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        postImg.layer.cornerRadius = postImg.frame.width/2
        postImg.clipsToBounds = true
       
    }

    @IBAction func makePostBtnPressed(sender: AnyObject) {
        
    }
   
    @IBAction func cancelBtnPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func addPicBtnPressed(sender: UIButton) {
        sender.setTitle("", forState: .Normal)
    }
}
