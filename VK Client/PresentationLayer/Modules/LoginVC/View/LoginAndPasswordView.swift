//
//  LoginAndPasswordView.swift
//  VK Client
//
//  Created by Const. on 22.06.2020.
//  Copyright © 2020 Oleginc. All rights reserved.
//

import UIKit

class LoginAndPasswordView: UIView {
    
    // MARK: - UI Elements
    
    let loginTextField: UITextField = {
        let field = UITextField()
        field.attributedPlaceholder = NSAttributedString(string: "Логин",
                            attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        field.tintColor = .white
        field.textColor = .white
        field.keyboardType = .asciiCapable
        field.keyboardAppearance = .dark
        field.textContentType = .username
        return field
    }()
    
    let passwordTextField: UITextField = {
        let field = UITextField()
        field.attributedPlaceholder = NSAttributedString(string: "Пароль",
                            attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        field.tintColor = .white
        field.textColor = .white
        field.keyboardType = .asciiCapable
        field.keyboardAppearance = .dark
        field.textContentType = .password
        return field
    }()
    
    let separationLine: UIView = {
        let view = UIView()
        view.backgroundColor = .darkGray
        return view
    }()
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        fill()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fill()
    }
    
    // MARK: - Fill view
    
    private func fill() {
        
        // MARK: - Started settings
        
        self.backgroundColor = UIColor(red: 50/255, green: 50/255, blue: 50/255, alpha: 1)
        self.layer.cornerRadius = 10
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.darkGray.cgColor
        
        let leadingConst: CGFloat = 10
        let trailingConst: CGFloat = -10
        
        
        // MARK: - loginTextField
        
        let loginView = UIView()
        
        self.addSubview(loginView)
        loginView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            loginView.topAnchor.constraint(equalTo: self.topAnchor),
            loginView.widthAnchor.constraint(equalTo: self.widthAnchor),
            loginView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.5)
        ])
        
        self.addSubview(loginTextField)
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            loginTextField.centerYAnchor.constraint(equalTo: loginView.centerYAnchor),
            loginTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: leadingConst),
            loginTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: trailingConst)
        ])
        
        // MARK: - passwordTextField
        
        let passwordView = UIView()
        
        self.addSubview(passwordView)
        passwordView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            passwordView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            passwordView.widthAnchor.constraint(equalTo: self.widthAnchor),
            passwordView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.5)
        ])
        
        self.addSubview(passwordTextField)
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            passwordTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: leadingConst),
            passwordTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: trailingConst),
            passwordTextField.centerYAnchor.constraint(equalTo: passwordView.centerYAnchor)
        ])
        
        // MARK: - SeparationLine
        
        self.addSubview(separationLine)
        separationLine.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            separationLine.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            separationLine.widthAnchor.constraint(equalTo: self.widthAnchor),
            separationLine.heightAnchor.constraint(equalToConstant: 1)
        ])
        
    }
}
