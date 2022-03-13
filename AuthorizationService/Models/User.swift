//
//  User.swift
//  AuthorizationService
//
//  Created by Кунгурцев Эдуард Сергеевич on 13.03.2022.
//

import Foundation

 struct User {
    let user: String
    let password: String
    let person: Person
     
     static func getUser () -> User{
         User(user: "User", password: "Password", person: .getPerson())
     }
}


