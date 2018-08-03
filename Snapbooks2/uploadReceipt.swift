//
//  uploadReceipt.swift
//  Snapbooks2
//
//  Created by Byron Chan on 25/6/2018.
//  Copyright © 2018 Byron Chan. All rights reserved.
//

import UIKit
import FirebaseDatabase




/*

class MainScreenViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    var ref: DatabaseReference!
    
    @IBOutlet weak var photoDisplay: UIImageView!
    
    //Button for accessing phto library
    @IBAction func takePhoto(_ sender: Any) {
        
        let image = UIImagePickerController()
        image.delegate = self
        
        image.sourceType = UIImagePickerControllerSourceType.photoLibrary
        
        image.allowsEditing = true
        
        self.present(image, animated: true){
            //Code?
        }
        
    }
    
    //Displaying photo into the ImageView area after picked
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            photoDisplay.image = image
        }
        else {
            //show error msg
        }
        
        self.dismiss(animated: true, completion: nil)
    }
    
    
    //Confirm photo to save and segue to the Accounting entry page HAVE NOT LINKED THE PHOTOFILENAME TO WHAT GETS PUT INTO THE DATABASE
    @IBAction func confirmPhoto(_ sender: Any) {
        ref?.child("User").child("Receipts").setValue(["filename":"Image2"])
        performSegue(withIdentifier: "segueEtnry", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        //Reference the database, the var ref was declared in line 15
        ref = Database.database().reference()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
}
*/
