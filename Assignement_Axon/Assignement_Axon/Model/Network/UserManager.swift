//
//  UserEndPoint.swift
//  Assignement_Axon
//
//  Created by Ievgen Petrovskiy on 02.04.2021.
//

import Foundation
import Alamofire

class UserManager: UserEndpointProtocol {
    
    func fetchUsers() {
        
        let request = AF.request("https://randomuser.me/api/?results=20")
        
        request.responseDecodable(of: Users.self) { (response) in
            guard let users = response.value else {return}
            print(users.results.first!.fullName)
        }
        
    }
    
    
}
