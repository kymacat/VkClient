//
//  ServicesAssembly.swift
//  VK Client
//
//  Created by Const. on 21.06.2020.
//  Copyright © 2020 Oleginc. All rights reserved.
//

import Foundation

protocol IServicesAssembly {
    
}

class ServicesAssembly: IServicesAssembly {
    
    private let coreAssembly: ICoreAssembly
    
    init(coreAssembly: ICoreAssembly) {
        self.coreAssembly = coreAssembly
    }
}
