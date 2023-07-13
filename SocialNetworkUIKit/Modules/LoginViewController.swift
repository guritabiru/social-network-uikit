//
//  LoginViewController.swift
//  SocialNetworkUIKit
//
//  Created by Bimo Sekti Wicaksono on 11/07/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var submitBtn: UIButton!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBAction func submitBtnTapped(_ sender: Any) {
        UserDefaults.standard.set(true, forKey: "isLogin")
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func usernameOnChanged(_ sender: Any) {
        isSubmitEnable()
    }
    
    @IBAction func passwordOnChanged(_ sender: Any) {
        isSubmitEnable()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        submitBtn.isEnabled = false

        // Do any additional setup after loading the view.
    }
    
    func isSubmitEnable() {
        if (usernameField.text == "" || passwordField.text == "") {
            submitBtn.isEnabled = false
        } else {
            submitBtn.isEnabled = true
        }
    }
}
