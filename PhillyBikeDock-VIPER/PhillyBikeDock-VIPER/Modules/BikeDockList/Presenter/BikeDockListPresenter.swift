//
//  BikeDockListPresenter.swift
//  PhillyBikeDock-VIPER
//
//  Created by Jack Amoratis on 1/7/18.
//  Copyright © 2018 Jack Amoratis All rights reserved.
//

import Foundation

class BikeDockListPresenter: BikeDockListPresentation {
    weak var view: BikeDockListView?
    var interactor: BikeDockListUseCase!
    var router: BikeDockListWireframe!
}
