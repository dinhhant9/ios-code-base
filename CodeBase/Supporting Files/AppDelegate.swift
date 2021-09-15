//
//  AppDelegate.swift
//  CodeBase
//
//  Created by TMA on 9/15/21.
//

import UIKit
import Swinject

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    let mainAssembler = AppDelegate.assemblyContainer()
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        window = UIWindow(frame: UIScreen.main.bounds)
        
        if let controller = mainAssembler.resolver.resolve(SplashScreenViewInput.self) as? UIViewController {
            window?.rootViewController = controller
        }
        UIDevice.current.isBatteryMonitoringEnabled = true
        window?.makeKeyAndVisible()
        
        return true
    }


}

