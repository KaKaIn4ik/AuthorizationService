//
//  WelcomeViewController.swift
//  AuthorizationService
//
//  Created by Кунгурцев Эдуард Сергеевич on 09.03.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var nameWelcome: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = nameWelcome
    
    }
    

 

}
