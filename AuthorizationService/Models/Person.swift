//
//  Person.swift
//  AuthorizationService
//
//  Created by Кунгурцев Эдуард Сергеевич on 13.03.2022.
//

import Foundation

 struct Person {
    let name: String
    let surname: String
    let facts: String
    let age: String
    let location: String
    let studied: String

     static func getPerson() -> Person{
         Person(
            name: "Eduard",
            surname: "Kungurtsev",
            facts: "govno",
            age: "24",
            location: "Novosibirsk",
            studied: "NGTU"
         )
     }
 }


