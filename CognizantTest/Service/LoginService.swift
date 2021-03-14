//
//  LoginService.swift
//  CognizantTest
//
//  Created by Athlosn90 on 13/03/2021.
//  Copyright © 2021 AndreaSanna. All rights reserved.
//

import Foundation


class LoginService {
    

//    Simulates communication with server for authentication 
    func loginWithUsername(username: String, password: String, completion: @escaping (Bool) -> ()) {
        
            if password.count >= 6 {
                      
                completion(true)
                    
            } else {
                
                completion(false)
                
            }
        
    }
    
    
    
    
}
