//
//  ViewController.swift
//  CognizantTest
//
//  Created by Athlosn90 on 13/03/2021.
//  Copyright © 2021 AndreaSanna. All rights reserved.
//

import UIKit

class LoginController: UIViewController, UITextFieldDelegate {
    
    let viewModel = UserViewModel(user: User())

    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
        
    }

    func initView() {
        
        let tapView = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        
        view = LoginView()
        (view as! LoginView).loginButton.addTarget(self, action: #selector(login), for: .touchUpInside)
        (view as! LoginView).addGestureRecognizer(tapView)
        (view as! LoginView).setTextDelegates(textDelegate: self)
    }
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        if textField == (view as! LoginView).passwordField {
            viewModel.password = textField.text!
        } else {
            viewModel.username = textField.text!
        }
        
    }
    
    @objc func hideKeyboard() {
        view.endEditing(true)
    }
    
    @objc func login() {

        viewModel.processLogin { (access) in
            if access {
                let tvc = TableViewController()
                self.navigationController?.pushViewController(tvc, animated: true)
            }
        }     
    }
}
