//
//  RootAssembly.swift
//  VK Client
//
//  Created by Const. on 21.06.2020.
//  Copyright © 2020 Oleginc. All rights reserved.
//

import Foundation

class RootAssembly {
    lazy var presentationAssembly: IPresentationAssembly = PresentationAssembly(serviceAssembly: self.servicesAssembly)
    private lazy var servicesAssembly: IServicesAssembly = ServicesAssembly(coreAssembly: self.coreAssembly)
    private lazy var coreAssembly: ICoreAssembly = CoreAssembly()
}
