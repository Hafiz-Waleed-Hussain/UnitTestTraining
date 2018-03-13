//
//  LoginViewModel.swift
//  UnitTestTraining
//
//  Created by Waleed on 13/03/2018.
//  Copyright © 2018 Waleed. All rights reserved.
//

import UIKit

class LoginViewModel: NSObject {

    func login(username: String, password:String)->String{

        if(username.isEmpty){
            return "Username should not empt"
        }
        
        if(password.count < 6){
            return "Password should be greater than six"
        }

        return "Sucess"
        
    }
    
    
    func formateMessage(count:Int)-> String{
        return "\(count) Images"
    }

    
}
