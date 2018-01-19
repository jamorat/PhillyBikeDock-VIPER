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
    
    var bikeDocks: BikeDock = BikeDock(dict: ["type": "", "features":[]])! {
        didSet {
            if bikeDocks.features.count > 0 {
                view?.showBikeDocksData(bikeDocks)
            } else {
                view?.showNoContentScreen()
            }
        }
    }
}

extension BikeDockListPresenter : BikeDockListInteractorOutput {
    func bikeDockListFetched(_ bikeDocks: BikeDock) {
        self.bikeDocks = bikeDocks
        print("bike dock list fetched")
    }
    
    func bikeDockListFetchFailed() {
        print("bike dock list fetch failed")
    }
    
    
}
