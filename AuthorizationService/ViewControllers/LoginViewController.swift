//
//  LoginViewController.swift
//  AuthorizationService
//
//  Created by Кунгурцев Эдуард Сергеевич on 09.03.2022.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    // MARK: - Private properties
    private let nameOutput =  User.getUser()

    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = nameOutput
            } else if let navigationVC = $0 as? UINavigationController {
                guard let userInfoVC = navigationVC.topViewController as? AboutViewController else { return }
                userInfoVC.user = nameOutput
                
            }
        }
    }
        
        // MARK: IBActions
        @IBAction func logInButtonPressed(){
            guard userNameTextField.text == nameOutput.user, passwordTextField.text == nameOutput.password else {
                showAlert(
                    title: "Invalid login or password",
                    message: "Please, enter correct login and password",
                    textField: passwordTextField
                )
                return
            }
            performSegue(withIdentifier: "openWelcomeVC", sender: nil)
        }
        
        @IBAction func showAuthorizarionData(_ sender: UIButton) {
            sender.tag == 0
            ? showAlert(title: "Oops!", message: "Your name is \(nameOutput.user) 😉")
            : showAlert(title: "Oops!", message: "Your password is \(nameOutput.password) 😉 ")
        }
        
        @IBAction func unwindSegue(segue: UIStoryboardSegue){
            userNameTextField.text = ""
            passwordTextField.text = ""
        }
    }
    
    // MARK: - Alert Controller
    extension LoginViewController {
        private func showAlert (title: String, message: String, textField: UITextField? = nil) {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default) { _ in
                textField?.text = ""
            }
            alert.addAction(okAction)
            present(alert, animated: true)
        }
    }
    
    // MARK: - Keyboard
    extension LoginViewController: UITextFieldDelegate {
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            super.touchesBegan(touches, with: event)
            view.endEditing(true)
            
        }
        
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            if textField == userNameTextField {
                passwordTextField.becomeFirstResponder()
            } else {
                logInButtonPressed()
            }
            return true
        }
    }

