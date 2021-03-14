//
//  LoginViewModel.swift
//  CognizantTest
//
//  Created by Athlosn90 on 13/03/2021.
//  Copyright © 2021 AndreaSanna. All rights reserved.
//

import Foundation

class UserViewModel {
    

    private var loginService = LoginService()
    var userRegistered = Bool()
    
    var username: String
    var password: String
    
    init(user: User) {
        
        self.username = user.username ?? ""
        self.password = user.password ?? ""
        
    }
    
    func processLogin(completion: @escaping (Bool) -> ()) -> Void {
                
        loginService.loginWithUsername(username: username, password: password) { (success) in

            if success == true {

                completion(true)
   
            } else {
                completion(false)
                
            }
            
        }
    }
    
}
