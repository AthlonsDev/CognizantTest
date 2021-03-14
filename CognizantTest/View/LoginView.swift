//
//  LoginView.swift
//  CognizantTest
//
//  Created by Athlosn90 on 13/03/2021.
//  Copyright © 2021 AndreaSanna. All rights reserved.
//

import Foundation
import UIKit

class LoginView: UIView {
    
    
     var usernameField: UITextField = {
            var text = UITextField()
            text.attributedPlaceholder = NSAttributedString(string: "Enter Username")
            text.autocapitalizationType = .sentences
            text.textAlignment = .center
            text.backgroundColor = .white
            text.translatesAutoresizingMaskIntoConstraints = false
            return text
        }()
        
        var passwordField: UITextField = {
            var text = UITextField()
            text.attributedPlaceholder = NSAttributedString(string: "Enter Password")
            text.isSecureTextEntry = true
            text.textAlignment = .center
            text.backgroundColor = .white
            text.translatesAutoresizingMaskIntoConstraints = false
            return text
        }()
        
        var loginButton: UIButton = {
            var button = UIButton()
            button.backgroundColor = .red
            button.setTitle("Login", for: .normal)
            button.layer.cornerRadius = 10
            button.layer.masksToBounds = true
            button.translatesAutoresizingMaskIntoConstraints = false
            return button
        }()
    
        var titleLabel: UILabel = {
            var tl = UILabel()
            tl.text = "The Solar System"
            tl.textAlignment = .center
            tl.font = UIFont.boldSystemFont(ofSize: 25)
            tl.numberOfLines = 0
            tl.translatesAutoresizingMaskIntoConstraints = false
            return tl
        }()
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            
            setUsername()
            setPassword()
            setButton()
            setTitleLabel()
            
        }
        
        private func setUsername() {
            addSubview(usernameField)
            
            let usernameFieldConstraints = [usernameField.centerXAnchor.constraint(equalTo: centerXAnchor),
                                            usernameField.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0),
                                            usernameField.widthAnchor.constraint(equalToConstant: 200)]
            
            NSLayoutConstraint.activate(usernameFieldConstraints)
            
            
        }
        
        func setTextDelegates  <obj: UITextFieldDelegate> (
            textDelegate: obj) {
            
            usernameField.delegate = textDelegate
            passwordField.delegate = textDelegate
            
        }
        
        private func setPassword() {
            addSubview(passwordField)
            
            let passwordFieldConstraints = [passwordField.centerXAnchor.constraint(equalTo: centerXAnchor),
            passwordField.topAnchor.constraint(equalTo: usernameField.bottomAnchor, constant: 20),
            passwordField.widthAnchor.constraint(equalToConstant: 200)]
            
            NSLayoutConstraint.activate(passwordFieldConstraints)
        }
    
        
        private func setButton() {
            addSubview(loginButton)
            
            let loginButtonConstraints = [loginButton.centerXAnchor.constraint(equalTo: centerXAnchor),
                                          loginButton.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 50),
                                          loginButton.widthAnchor.constraint(equalToConstant: 100),
                                          loginButton.heightAnchor.constraint(equalToConstant: 50)]
            
            NSLayoutConstraint.activate(loginButtonConstraints)
            
            
        }
    
    
        private func setTitleLabel() {
            addSubview(titleLabel)
        
            let logoConstraints = [titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
                                   titleLabel.bottomAnchor.constraint(equalTo: usernameField.topAnchor, constant: -50),
                                   titleLabel.widthAnchor.constraint(equalToConstant: 250),
                                   titleLabel.heightAnchor.constraint(equalToConstant: 50)]
        
            NSLayoutConstraint.activate(logoConstraints)
        
        }
    
 
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    
    
}
