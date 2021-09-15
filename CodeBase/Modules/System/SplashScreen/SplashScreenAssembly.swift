//
//  SplashScreenAssembly.swift
//  CodeBase
//
//  Created by TMA on 9/15/21.
//

import Foundation
import Swinject

class SplashScreenAssembly: Assembly {
    func assemble(container: Container) {
        container.register(SplashScreenViewInput.self) { _ in SplashScreenViewController()
            }.initCompleted { resolver, service in
                let controller = service as? SplashScreenViewController
                controller?.output = resolver.resolve(SplashScreenViewOutput.self)
            }.inObjectScope(.weak)

        container.register(SplashScreenPresenter.self) { _ in SplashScreenPresenter()
            }.initCompleted { resolver, service in
                let presenter = service as SplashScreenPresenter
                presenter.view = resolver.resolve(SplashScreenViewInput.self)
                presenter.interactor = resolver.resolve(SplashScreenInteractorInput.self)
                presenter.router = resolver.resolve(SplashScreenRouterInterface.self)
            }.inObjectScope(.weak)

        container.register(SplashScreenInteractorInput.self) { _ in SplashScreenInteractor()
            }.initCompleted { resolver, service in
                let interactor = service as? SplashScreenInteractor
            }.inObjectScope(.weak)

        container.register(SplashScreenRouterInterface.self) { _ in SplashScreenRouter()
            }.initCompleted { resolver, service in
                let router = service as? SplashScreenRouter
                router?.view = resolver.resolve(SplashScreenViewInput.self) as? UIViewController
                router?.resolver = resolver
            }.inObjectScope(.weak)

        container.register(SplashScreenViewOutput.self) { resolver in
            resolver.resolve(SplashScreenPresenter.self)!
        }.inObjectScope(.weak)
    }
}
