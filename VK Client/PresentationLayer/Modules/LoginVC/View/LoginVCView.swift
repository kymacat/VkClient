//
//  LoginVCView.swift
//  VK Client
//
//  Created by Const. on 22.06.2020.
//  Copyright © 2020 Oleginc. All rights reserved.
//

import UIKit

class LoginVCView: UIView {
    
    // MARK: - UI
    
    let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "VK_Logo")
        return imageView
    }()
    
    let loginAndPasswordView = LoginAndPasswordView()
    
    let loginButton = LoginButton()
    
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        fill()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        fill()
    }

    // MARK: - Fill view
    
    private var constraintsWithoutKeyboard = [NSLayoutConstraint]()
    private var constraintsWithKeyboard = [NSLayoutConstraint]()
    
    private func fill() {
        
        self.backgroundColor = UIColor(red: 30/255, green: 30/255, blue: 30/255, alpha: 1)
        
        self.addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        constraintsWithoutKeyboard = [
            logoImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 100),
            logoImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 100),
            logoImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -100)
        ]
        constraintsWithKeyboard = [
            logoImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 50),
            logoImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 125),
            logoImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -125)
        ]
        
        setConstraintsWithoutKeyboard()
        
        NSLayoutConstraint.activate([
            logoImageView.heightAnchor.constraint(equalTo: logoImageView.widthAnchor)
        ])
        
        self.addSubview(loginAndPasswordView)
        loginAndPasswordView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            loginAndPasswordView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 40),
            loginAndPasswordView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            loginAndPasswordView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            loginAndPasswordView.widthAnchor.constraint(equalTo: loginAndPasswordView.heightAnchor, multiplier: 4.2)
        ])
        
        self.addSubview(loginButton)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: loginAndPasswordView.bottomAnchor, constant: 20),
            loginButton.leadingAnchor.constraint(equalTo: loginAndPasswordView.leadingAnchor),
            loginButton.trailingAnchor.constraint(equalTo: loginAndPasswordView.trailingAnchor),
            loginButton.heightAnchor.constraint(equalTo: loginAndPasswordView.heightAnchor, multiplier: 0.5)
        ])
    }
    
    func setConstraintsWithoutKeyboard() {
        NSLayoutConstraint.deactivate(constraintsWithKeyboard)
        NSLayoutConstraint.activate(constraintsWithoutKeyboard)
    }
    
    func setConstraintsWithKeyboard() {
        NSLayoutConstraint.deactivate(constraintsWithoutKeyboard)
        NSLayoutConstraint.activate(constraintsWithKeyboard)
    }
}
