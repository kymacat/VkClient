//
//  PresentationAssembly.swift
//  VK Client
//
//  Created by Const. on 21.06.2020.
//  Copyright © 2020 Oleginc. All rights reserved.
//

import Foundation

protocol IPresentationAssembly {
    
}

class PresentationAssembly: IPresentationAssembly {
    
    
    private let serviceAssembly: IServicesAssembly
    
    init(serviceAssembly: IServicesAssembly) {
        self.serviceAssembly = serviceAssembly
    }
}
