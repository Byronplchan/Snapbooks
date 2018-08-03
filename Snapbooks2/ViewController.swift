//
//  ViewController.swift
//  Snapbooks2
//
//  Created by Byron Chan on 25/6/2018.
//  Copyright © 2018 Byron Chan. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {

    
    @IBOutlet weak var signInSelector: UISegmentedControl!
    
    @IBOutlet weak var signInLabel: UILabel!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var signInButton: UIButton!
    
    //variable for whether the segment button is on Sign in or Register
    var isSignIn:Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func signInSelectorChanged(_ sender: UISegmentedControl) {
        
        //Flip the Bool
        isSignIn = !isSignIn
        
        //Check the Bool, and set the Label and Button
        if isSignIn {
            signInLabel.text = "Sign In"
            signInButton.setTitle("Sign In", for: .normal)
        }
        else {
            signInLabel.text = "Register"
            signInButton.setTitle("Register", for: .normal)
        }
        
    }
    
    @IBAction func signInButtonTapped(_ sender: UIButton) {
        
        //Form Validation
        if let email = emailTextField.text, let pass = passwordTextField.text {
            
                //Check if its Sign In or Register
                if isSignIn {
                    //Sign in the User
                    Auth.auth().signIn(withEmail: email, password: pass) { (user, error) in
                        
                        //Check that user isn't Nil
                        if let u = user {
                            //user is found, go to HomeScreen
                            self.performSegue(withIdentifier: "goToHome", sender: self)
                        }
                        else {
                            //Error, empty fields
                        }
                    }
                }
                else {
                    //Register the User
                    Auth.auth().createUser(withEmail: email, password: pass) { (user, error) in
                        
                        //Check that user is not nil
                        if let u = user {
                            //User is found, go to HomeScreen
                            self.performSegue(withIdentifier: "goToHome", sender: self)
                        }
                        else {
                            //Error, empty fields, show error
                        }
                        
                    }
                }
            
        }
        

        
        
    }
    
    
}

