//
//  ViewController.swift
//  AlertMessage
//
//  Created by Faridho on 12/03/20.
//  Copyright © 2020 Faridho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var password2Text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func signUpClicked(_ sender: Any) {
        /*let alert = UIAlertController(title: "Error", message: "Username not found", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "ok", style: UIAlertAction.Style.default) { (UIAlertAction) in
            print("clicked")
        }
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)*/
        
        if usernameText.text == "" {
            alertMessage(titleInput: "Error", messageInput: "Username not found")
        } else if passwordText.text == "" {
            alertMessage(titleInput: "Error", messageInput: "Password not found")
        } else if password2Text.text != passwordText.text {
            alertMessage(titleInput: "Error", messageInput: "Password do not match")
        } else {
            alertMessage(titleInput: "OK", messageInput: "User OK")
        }
    }
    
    func alertMessage(titleInput: String, messageInput: String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
}

