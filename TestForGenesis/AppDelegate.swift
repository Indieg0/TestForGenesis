//
//  AppDelegate.swift
//  TestForGenesis
//
//  Created by Indieg0 on 24.06.17.
//  Copyright © 2017 None. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    lazy var coreDataStack = CoreDataStack(modelName: "TestForGenesis")
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    
        ServerManager.shared.managedContext = coreDataStack.managedContext
        ServerManager.shared.deleteFromCoreData()
        ServerManager.shared.startConnection()
     
        return true
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        coreDataStack.saveContext()
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
       coreDataStack.saveContext()
    }


}

