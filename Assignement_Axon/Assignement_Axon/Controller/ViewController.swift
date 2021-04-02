//
//  ViewController.swift
//  Assignement_Axon
//
//  Created by Ievgen Petrovskiy on 01.04.2021.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    private let manager = UserManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        manager.fetchUsers()
    }
}
