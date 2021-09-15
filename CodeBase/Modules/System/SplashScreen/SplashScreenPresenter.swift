//
//  SplashScreenPresenter.swift
//  CodeBase
//
//  Created by TMA on 9/15/21.
//

import Foundation

enum SplashInterface {

}

class SplashScreenPresenter {
    weak var view: SplashScreenViewInput!
    var interactor: SplashScreenInteractorInput!
    var router: SplashScreenRouterInterface!
}

// MARK: - SplashScreenViewOutput
extension SplashScreenPresenter: SplashScreenViewOutput {
    
}
