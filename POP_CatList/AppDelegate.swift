//
//  AppDelegate.swift
//  POP_CatList
//
//  Created by Aleksey Gotyanov on 10.05.2018.
//  Copyright © 2018 Aleksey Gotyanov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let catListTableView = window!.rootViewController as! CatListTableViewController
        let repository = TestCatRepository()
        catListTableView.setup(repository: repository)
        return true
    }
}
