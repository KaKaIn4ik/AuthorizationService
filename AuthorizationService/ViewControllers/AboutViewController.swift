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
    
    let nameOutput =  User.getUser()
    var user = ""
    var surname = ""
    var age = ""
    var location = ""
    var studied = ""

override func viewDidLoad() {
    super.viewDidLoad()

    nameLabel.text = "My name is \(user)!"
    surnameLabel.text = "My surname \(surname)!"
    ageLabel.text = "I am \(age) years old!"
    locationLabel.text = "I live in \(location) !"
    studiedLabel.text = "I studied in \(studied)!"
    

}

override func prepare(for segue: UIStoryboardSegue, sender: Any?){
    guard let aboutVC = segue.destination as? EndViewController else { return }
    aboutVC.facts = nameOutput.person.facts
}
}
