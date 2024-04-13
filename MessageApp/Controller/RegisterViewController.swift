//
//  RegisterViewController.swift
//  MessageApp
//
//  Created by Bryan Battu on 13/04/2024.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var firstnameTextField: UITextField!
    @IBOutlet weak var lastnameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        registerButton.layer.cornerRadius = 24
        imageView.backgroundColor = .lightGray
    }
    
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        firstnameTextField.resignFirstResponder()
        lastnameTextField.resignFirstResponder()
        emailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        
        guard let firstname = firstnameTextField.text, let lastname = lastnameTextField.text, let email = emailTextField.text, let password = passwordTextField.text, !firstname.isEmpty, !lastname.isEmpty, !email.isEmpty, !password.isEmpty, password.count >= 8 else {
            return
        }
    }
    
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        dismiss(animated: true)
    }
}

extension RegisterViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == firstnameTextField {
            lastnameTextField.becomeFirstResponder()
        } else if textField == lastnameTextField {
            emailTextField.becomeFirstResponder()
        } else if textField == emailTextField {
            passwordTextField.becomeFirstResponder()
        } else if textField == passwordTextField {
            registerButtonTapped(self)
        }
        
        return true
    }
}
