//
//  RegisterViewController.swift
//  JeffNationalBank
//
//  Created by hannes nose on 5/4/17.
//  Copyright © 2017 hannes nose. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    let jnb = JNBAccount.instance
    
    @IBOutlet weak var firstNameTF: UITextField!
    @IBOutlet weak var lastNameTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    
    @IBAction func registerButton(_ sender: Any) {
        _ = jnb.createAccount(firstname: firstNameTF.text!, lastname: lastNameTF.text!, email: emailTF.text!, password: passwordTF.text!)
        self.performSegue(withIdentifier: "regtolog", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


   
}
