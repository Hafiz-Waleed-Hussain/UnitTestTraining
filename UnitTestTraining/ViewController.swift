//
//  ViewController.swift
//  UnitTestTraining
//
//  Created by Waleed on 13/03/2018.
//  Copyright © 2018 Waleed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let viewModel = LoginViewModel()
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBAction func loginClick(_ sender: Any) {
        let result = viewModel.login(username: username.text!, password: password.text!)
        if(result == "Sucess"){
            print("Success")
        }else{
            print(result)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

