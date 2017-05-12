//
//  LoginViewController.swift
//  JeffNationalBank
//
//  Created by hannes nose on 5/5/17.
//  Copyright © 2017 hannes nose. All rights reserved.
//

import UIKit
class LoginViewController: UIViewController {
    
    let jnb = JNBAccount.instance
    
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    
    func goToDashboardLetsDoIt() {
        
    }
    
    @IBAction func loginButton(_ sender: Any) {
        
        let email: String = emailTF.text!
        let password: String = passwordTF.text!
        let proceedClosure: () -> Void = { [unowned self] in
            self.performSegue(withIdentifier: "headOverToTheDashboard", sender: nil)
        }
        
        jnb.login(email: email, password: password, proceed: proceedClosure)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

  

}
