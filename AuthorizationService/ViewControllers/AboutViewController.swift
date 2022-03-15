//
//  AboutViewController.swift
//  AuthorizationService
//
//  Created by Кунгурцев Эдуард Сергеевич on 13.03.2022.
//

import UIKit

class AboutViewController: UIViewController {
   
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var studiedLabel: UILabel!
    
    var user: User!


    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.person.fullName

        nameLabel.text = "My name is \(user.person.name)!"
        surnameLabel.text = "My surname \(user.person.surname)!"
        ageLabel.text = "I am \(user.person.age) years old!"
        locationLabel.text = "I live in \(user.person.location) !"
        studiedLabel.text = "I studied in \(user.person.studied)!"
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        guard let aboutVC = segue.destination as? EndViewController else { return }
        aboutVC.user = user
    }
}
