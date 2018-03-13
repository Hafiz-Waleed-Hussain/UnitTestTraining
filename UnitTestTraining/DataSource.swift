//
//  DataSource.swift
//  UnitTestTraining
//
//  Created by Waleed on 13/03/2018.
//  Copyright © 2018 Waleed. All rights reserved.
//

import Foundation


protocol Callback {
    func sucess()
    func failure()
}


protocol DataSource {

    func login(username:String, password:String, callback: Callback )

}


private class LocalDataSource: DataSource{
    
    func login(username: String, password: String, callback: Callback) {
        
        /*
 
         let db = Realm()
         boolean b = db.getLogin()
         if(b){
           callback.success()
         }else{
            callback.failure()
         }
         */
    }
}

private class RemoteDataSource: DataSource{
    
    func login(username: String, password: String, callback: Callback) {
        
    }
}


class DataRepository: DataSource{

    private let localDataSource:DataSource = LocalDataSource()
    private let remoteDataSource:DataSource = RemoteDataSource()
    
    
    let map = [String:Bool]()
    
    func login(username: String, password: String, callback: Callback) {
    
        
        if(map["data"] != nil){
            callback.sucess()
        }
        
        class C: Callback{
            func sucess() {
                map["data"] = true
                localDataSource.login(username: <#T##String#>, password: <#T##String#>, callback: <#T##Callback#>)
                callback.sucess()
        
            }
            
            func failure() {
            
                remoteDataSource.login(username: String, password: <#T##String#>, callback: Callback)
            }
        }
        
        
        
        let abc = C()
       
        

        localDataSource.login(username: username, password: password, callback: abc)
        
    }

    
}
