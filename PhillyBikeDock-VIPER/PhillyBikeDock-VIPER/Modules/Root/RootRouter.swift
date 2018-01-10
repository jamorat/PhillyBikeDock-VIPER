//
//  RootRouter.swift
//  PhillyBikeDock-VIPER
//
//  Created by Jack Amoratis on 1/7/18.
//  Copyright © 2018 Jack Amoratis All rights reserved.
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
