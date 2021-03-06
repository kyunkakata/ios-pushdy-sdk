//
//  AppDelegate.swift
//  Pushdy
//
//  Created by dangthequan on 06/27/2019.
//  Copyright (c) 2019 dangthequan. All rights reserved.
//

import UIKit
import PushdySDK

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, PushdyDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let clientKey = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjI2MzcwMjg2ODgxNCIsImFwcF9pZCI6InQxOV9kZXYiLCJpYXQiOjE1NDg5MDkxNTF9.2fQdZ3FmMZfATQj2iFGnPpON9Hxz3J_KQmUkInLqMTM"
        
        // Init Pushdy with client key
        Pushdy.initWith(clientKey: clientKey, delegate: self, launchOptions: launchOptions)
        
        print("Device ID \(Pushdy.getDeviceID())")
        
        // You can call registering push notification method here or anywhere
        Pushdy.registerForPushNotifications()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    // MARK: - PushdyDelegate
    func readyForHandlingNotification() -> Bool {
        var already = true
        // Example: already = pass through login or tutorial/introdution screen
        return already
    }
    
    func onNotificationReceived(_ notification: [String : Any], fromState: String) {
        if fromState == "not_running" {
            // Example: is_app_launched_from_push = true
        }
        else if fromState == "active" {
            // Example: Play a sound to notitfy user
        }
        else if fromState == "inactive" {
            // Example: Play a sound to notitfy user
        }
        else if fromState == "background" {
            
        }
    }
    
    func onNotificationOpened(_ notification: [String : Any], fromState: String) {
        // Handle notification
    }
    
    func onRemoteNotificationRegistered(_ deviceToken: String) {
        // Send device token to your own server
    }
}

