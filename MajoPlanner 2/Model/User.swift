//
//  User.swift
//  MajoPlanner 2
//
//  Created by Kearnu Mila on 11/6/2024.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    let fullname : String
    let email : String
    
    var intials: String {
        let formatter = PersonNameComponentsFormatter()
        if let components = formatter.personNameComponents(from: fullname) {
            formatter.style = .abbreviated
            return formatter.string(from:components)
        }
        
        return ""
    }
}

extension User {
    static var MOCK_USER = User(id:NSUUID() .uuidString, fullname: "Kobe Bryant", email:"test@gmail.com")
}
