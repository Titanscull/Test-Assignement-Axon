//
//  User.swift
//  Assignement_Axon
//
//  Created by Ievgen Petrovskiy on 02.04.2021.
//

import Foundation

// MARK: - User
struct User: Decodable {
    let gender: String
    let name: Name
    let dob, registered: Dob
    let phone, cell: String
    let picture: Picture
}

// MARK: - Name
struct Name: Codable {
    let title, first, last: String
}

// MARK: - Dob
struct Dob: Decodable {
    let date: String
    let age: Int
}

// MARK: - Picture
struct Picture: Codable {
    let large, medium, thumbnail: String
}
