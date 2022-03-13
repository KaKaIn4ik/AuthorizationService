//
//  EndViewController.swift
//  AuthorizationService
//
//  Created by Кунгурцев Эдуард Сергеевич on 14.03.2022.
//

import UIKit

class EndViewController: UIViewController {
    @IBOutlet var factsLabel: UILabel!
    
    var facts = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        factsLabel.text = " \(facts)!"
        

    }
}
