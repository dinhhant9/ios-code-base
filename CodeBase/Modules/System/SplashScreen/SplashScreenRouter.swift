//
//  SplashScreenRouter.swift
//  CodeBase
//
//  Created by TMA on 9/15/21.
//

import Foundation
import UIKit
import Swinject

protocol SplashScreenRouterInterface {
    
}

class SplashScreenRouter {
    weak var view: UIViewController!
    var resolver: Resolver?
}

// MARK: - SplashScreenRouterInterface
extension SplashScreenRouter: SplashScreenRouterInterface {
    
}
