//
//  LoginViewController.swift
//  Flash Chat iOS13
//
//  Created by Gonzalo Olvera Monroy on 18/01/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    

    @IBAction func loginPressed(_ sender: UIButton) {
        
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                
                if let e = error {
                    print(e)
                } else {
                    // Navigate to the ChatViewController
                    self.performSegue(withIdentifier: "LoginToChat", sender: self)
                }
                
                
            }
            
        }
        
        
        
    }
    
}
