//
//  SplashScreenViewController.swift
//  CodeBase
//
//  Created by TMA on 9/15/21.
//

import Foundation
import UIKit

protocol SplashScreenViewInput: class {
    
}

protocol SplashScreenViewOutput {
    
}

class SplashScreenViewController: UIViewController {
    var output: SplashScreenViewOutput!
}

// MARK: - SplashScreenViewInput
extension SplashScreenViewController: SplashScreenViewInput {
    
}
