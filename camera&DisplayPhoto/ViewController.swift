//
//  ViewController.swift
//  camera&DisplayPhoto
//
//  Created by scholar on 8/16/22.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        // Do any additional setup after loading the view.
    }

    @IBAction func choosePhototapped(_ sender: Any) {
        
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true , completion: nil)
        
    }
    
    @IBAction func takeSelfieTapped(_ sender: UIButton) {
        
        imagePicker.sourceType = .camera
        
        present(imagePicker, animated: true , completion: nil)
        
    }
    @IBOutlet weak var displayImage: UIImageView!
    
    func imagePickerController(_ _picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let selectedImage = info [UIImagePickerController.InfoKey.originalImage] as? UIImage {
        
    }
}
    
    @IBAction func HiddenTestbutton(_ sender: Any) {
    }
}
