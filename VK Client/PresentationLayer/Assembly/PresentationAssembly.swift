//
//  PresentationAssembly.swift
//  VK Client
//
//  Created by Const. on 21.06.2020.
//  Copyright © 2020 Oleginc. All rights reserved.
//

import Foundation

protocol IPresentationAssembly {
    func loginViewController() -> LoginViewController
}

class PresentationAssembly: IPresentationAssembly {
    
    private let serviceAssembly: IServicesAssembly
    
    init(serviceAssembly: IServicesAssembly) {
        self.serviceAssembly = serviceAssembly
    }
    
    // MARK: - LoginViewController
    
    func loginViewController() -> LoginViewController {
        let model = loginVCModel()
        let controller = LoginViewController(model: model, assembly: self)
        return controller
    }
    
    private func loginVCModel() -> ILoginVCModel {
        return LoginVCModel()
    }
}
