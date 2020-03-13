//
//  ViewController.swift
//  ProyectFirebase
//
//  Created by Steph on 3/6/20.
//  Copyright © 2020 stephSalazar. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func login(_ sender: UIButton){
        guard let email = emailTF.text, email != "", let password = passTF.text, email != "" else {
            return
        }
        
        Auth.auth.createUser(withEmail: email, password: password) { (user, error) in
            if let error = error{
                print(error.localizedDescription)
                return
            }
            print("usuario craedo", user?.user.uid)
        }
    }

    @IBAction func cancel(_ sender: UIButton){
        
    }
}

