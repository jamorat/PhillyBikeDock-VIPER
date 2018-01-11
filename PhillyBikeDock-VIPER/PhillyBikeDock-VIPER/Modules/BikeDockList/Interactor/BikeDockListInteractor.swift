//
//  BikeDockListInteractor.swift
//  PhillyBikeDock-VIPER
//
//  Created by Jack Amoratis on 1/7/18.
//  Copyright © 2018 Jack Amoratis All rights reserved.
//

import Foundation
class BikeDockListInteractor : BikeDockListUseCase {
    weak var output: BikeDockListInteractorOutput!
    
    func fetchBikeDockList() {
        print("fetching bike dock list")
    }
}
