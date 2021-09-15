//
//  AppDelegate+Additionals.swift
//  CodeBase
//
//  Created by TMA on 9/15/21.
//

import Foundation
import Swinject

extension AppDelegate {
    class func assemblyContainer() -> Assembler {
        return Assembler([SplashScreenAssembly()])
    }
}
