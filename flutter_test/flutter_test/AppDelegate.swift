//
//  AppDelegate.swift
//  flutter_test
//
//  Created by 小瓶子 on 2023/5/24.
//

import UIKit
import Flutter
import FlutterPluginRegistrant


@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate {
    
    lazy var flutterEngine = FlutterEngine(name: "my flutter engine")
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        flutterEngine.run()
        GeneratedPluginRegistrant.register(with: self.flutterEngine)
        
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = UIColor.white
        window?.rootViewController = ViewController()
        window?.makeKeyAndVisible()
        return true
    }
}

