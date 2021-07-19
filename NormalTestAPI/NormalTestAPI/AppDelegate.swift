//
//  AppDelegate.swift
//  NormalTestAPI
//
//  Created by Kevin Morales on 7/19/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        setUpInitView()
        return true
    }
    
    private func setUpInitView() {
    //        let coordinator = MainCoordinator()
    //        coordinator.homeView()
            window = UIWindow(frame: UIScreen.main.bounds)
    //        coordinator.navigationController.navigationBar.prefersLargeTitles = true
            let initVC = HomeViewController()
            window?.rootViewController = initVC
            window?.makeKeyAndVisible()
        }

}

