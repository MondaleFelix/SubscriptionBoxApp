//
//  LoginVC.swift
//  SubscriptionBox
//
//  Created by Mondale on 2/24/20.
//  Copyright © 2020 Mondale. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    var imageConstraintStart: NSLayoutConstraint!
    var imageConstraintEnd: NSLayoutConstraint!
    let imageView = UIImageView()
    let usernameTextField = SBTextField(text: "username")
    let passwordTextField = SBTextField(text: "password")
    let loginButton = SBButton(text: "Log in")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemTeal
        configureImageView()
        configureUsernameTF()
        configurePasswordTF()
        configureLoginButton()
        createDismissKeyboardTapGesture()
    }

    override func viewDidAppear(_ animated: Bool) {
        
        imageConstraintStart.isActive = false
        imageConstraintEnd.isActive = true
        
        UIView.animate(withDuration: 1.59, delay: 0.2,
                       usingSpringWithDamping: 0.6, initialSpringVelocity: 0.0, options: [], animations: {
                        self.view.layoutIfNeeded()
                        self.imageView.transform = CGAffineTransform(scaleX: 1, y: 1)
        }, completion: nil)
    }
    
    func createDismissKeyboardTapGesture(){
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
    }

    func configureImageView(){
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "burger")!
        
        imageConstraintStart = imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        imageConstraintStart.isActive = true
        
        //Right now it's off
        imageConstraintEnd = imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        
        imageView.transform = CGAffineTransform(scaleX: 0, y: 0)

        
        
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
           
            imageView.heightAnchor.constraint(equalToConstant: 200),
            imageView.widthAnchor.constraint(equalToConstant: 200)
        ])
    }

    func configureUsernameTF(){
        view.addSubview(usernameTextField)
        
        NSLayoutConstraint.activate([
            usernameTextField.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 50),
            usernameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            usernameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            usernameTextField.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func configurePasswordTF(){
        view.addSubview(passwordTextField)
        passwordTextField.isSecureTextEntry = true

        NSLayoutConstraint.activate([
            passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 20),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50)

        ])
    }

    
    func configureLoginButton(){
        view.addSubview(loginButton)
        loginButton.addTarget(self, action: #selector(pushHomeVC), for: .touchUpInside)
        NSLayoutConstraint.activate([
            loginButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            loginButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc func pushHomeVC(){
        self.view.window!.rootViewController = MainTabBar().createTabBar()
    }
    
}

