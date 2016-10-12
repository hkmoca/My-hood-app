//
//  AddPostVC.swift
//  My-Hood
//
//  Created by Héctor Moreno on 10/10/16.
//  Copyright © 2016 Héctor Moreno. All rights reserved.
//

import UIKit

class AddPostVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var descriptionField: UITextField!
    
    var imagePicker: UIImagePickerController!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        postImg.layer.cornerRadius = postImg.frame.width/2
        postImg.clipsToBounds = true
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        
       
    }

    @IBAction func makePostBtnPressed(sender: AnyObject) {
        if let title = titleField.text, let desc  = descriptionField.text, let img = postImg.image {
            
        }
    }
   
    @IBAction func cancelBtnPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func addPicBtnPressed(sender: UIButton) {
        sender.setTitle("", forState: .Normal)
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        postImg.image = image
    }
}
