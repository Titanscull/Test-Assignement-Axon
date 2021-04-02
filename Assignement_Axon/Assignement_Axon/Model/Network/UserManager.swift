//
//  UserEndPoint.swift
//  Assignement_Axon
//
//  Created by Ievgen Petrovskiy on 02.04.2021.
//

import Foundation
import Alamofire

class UserManager: UserEndpointProtocol {
    
    var totalUsers = 20
    private lazy var url = "https://randomuser.me/api/?results=\(totalUsers)"
    
    func fetchUsers() {
        
        let request = AF.request(url)
        
        request.responseDecodable(of: Users.self) { (response) in
            guard let users = response.value else {return}
            print(users.results.first!.fullName)
            
        }
    }
}
