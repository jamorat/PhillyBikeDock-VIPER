//
//  RootRouter.swift
//  PhillyBikeDock-VIPER
//
//  Created by R on 1/7/18.
//  Copyright © 2018 R. All rights reserved.
//

import UIKit

class RootRouter {
    func presentBikeDockListScreen(in window: UIWindow?) {
        if window != nil {
            window!.makeKeyAndVisible()
        }
        
        window?.rootViewController = BikeDockListRouter.assembleModule()
    }
}
