//
//  BikeDockListPresenter.swift
//  PhillyBikeDock-VIPER
//
//  Created by Jack Amoratis on 1/7/18.
//  Copyright © 2018 Jack Amoratis All rights reserved.
//

import Foundation

class BikeDockListPresenter: BikeDockListPresentation {
    func viewDidLoad() {
        interactor.fetchBikeDockList()
    }
    
    weak var view: BikeDockListView?
    var interactor: BikeDockListUseCase!
    var router: BikeDockListWireframe!
}

extension BikeDockListPresenter : BikeDockListInteractorOutput {
    func bikeDockListFetched(_ bikeDocks: [BikeDock]) {
        print("bike dock list fetched")
    }
    
    func bikeDockListFetchFailed() {
        print("bike dock list fetch failed")
    }
    
    
}
