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
struct Person {
    let name: String
    let surname: String
    let facts: String
    let age: String
    let location: String
    let studied: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person{
        Person(
            name: "Eduard",
            surname: "Kungurtsev",
            facts: "I want to tell a lot, BUT my head no longer cooks, it seems to be working",
            age: "24",
            location: "Novosibirsk",
            studied: "NGTU"
        )
    }
}

