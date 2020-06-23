//
//  ViewController.swift
//  VK Client
//
//  Created by Const. on 21.06.2020.
//  Copyright © 2020 Oleginc. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let model: ILoginVCModel
    private let presentationAssembly: IPresentationAssembly
    
    private let loginView = LoginVCView()
    
    
    // MARK: - Init
    
    init(model: ILoginVCModel, assembly: IPresentationAssembly) {
        self.model = model
        self.presentationAssembly = assembly
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - VC LifeCycle
    
    override func loadView() {
        view = loginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginView.loginButton.isEnabled = false
        
        loginView.loginAndPasswordView.loginTextField.delegate = self
        loginView.loginAndPasswordView.passwordTextField.delegate = self
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }
    

}

// MARK: - TextFieldDelegate

extension LoginViewController: UITextFieldDelegate {
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        guard
            let loginText = loginView.loginAndPasswordView.loginTextField.text,
            let passwordText = loginView.loginAndPasswordView.passwordTextField.text else {
                return
        }
        if loginText != "" && passwordText != "" {
            loginView.loginButton.isEnabled = true
        } else {
            loginView.loginButton.isEnabled = false
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return false
    }
}
