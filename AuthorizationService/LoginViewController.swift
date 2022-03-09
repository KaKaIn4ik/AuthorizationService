//
//  LoginViewController.swift
//  AuthorizationService
//
//  Created by Кунгурцев Эдуард Сергеевич on 09.03.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var forgetNameTextField: UIButton!
    @IBOutlet var forgotPasswordTextField: UIButton!
    
    var nameWelcome: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTextField.text = nameWelcome

    
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.nameWelcome = userNameTextField.text
    }

    @IBAction func logInButtonPressed() {
        let user = "User"
        let password = "password"
        if userNameTextField.text != user  {
            let allertController = UIAlertController(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                preferredStyle: .alert)
            let defaultAcrion = UIAlertAction(title: "OK", style: .cancel)
            allertController.addAction(defaultAcrion)
            present(allertController, animated: true)
        } else if  passwordTextField.text != password {
            let allertController = UIAlertController(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                preferredStyle: .alert)
            let defaultAcrion = UIAlertAction(title: "OK", style: .cancel)
            allertController.addAction(defaultAcrion)
            present(allertController, animated: true)
        }
        
    }
    @IBAction func unwind(for segue: UIStoryboardSegue){
        guard let welcomeVC = segue.source as? WelcomeViewController else { return }
        userNameTextField.text = welcomeVC.welcomeLabel.text
        
    }
    
    @IBAction func forgetUserNameButton() {
        guard let inputNameText = forgetNameTextField.textInputContextIdentifier, !inputNameText.isEmpty else {
            nameAlert(title: "Oops", message: "Your name is User!")
            return
        }
    }

    @IBAction func forgotPasswordButton() {
        guard let inputPasswordText = forgotPasswordTextField.textInputContextIdentifier, !inputPasswordText.isEmpty else {
            nameAlert(title: "Oops", message: "Your password is password")
            return
        }
        
    }
}

extension LoginViewController {
    private func nameAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
extension LoginViewController {
    private func passwordAlert(title: String, message: String){
        let alertTwo = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okActionTwo = UIAlertAction(title: "OK", style: .default)
        
        alertTwo.addAction(okActionTwo)
        present(alertTwo, animated: true)
    }
}
