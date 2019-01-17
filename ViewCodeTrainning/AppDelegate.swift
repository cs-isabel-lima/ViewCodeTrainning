//
//  AppDelegate.swift
//  ViewCodeTrainning
//
//  Created by thiago.lioy on 4/25/18.
//  Copyright © 2018 thiago.lioy. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        setupWindow()
        
        return true
    }

    private func setupWindow() {
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = MainViewController()
        self.window = window
        window.makeKeyAndVisible()
    }

}

