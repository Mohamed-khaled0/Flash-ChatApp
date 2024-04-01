//
//  LoginViewController.swift
//  Flash Chat iOS13
//
//  Created by MoKhaled on 17/03/2024.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    
    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text , let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) {authResult, error in
                if let e = error {
                    print(e.localizedDescription)
                } else {
                    self.performSegue(withIdentifier: K.loginSegue, sender: self)
                }
            }
        }
        
    }
}
