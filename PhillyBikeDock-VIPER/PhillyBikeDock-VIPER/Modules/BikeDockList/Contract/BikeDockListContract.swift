//
//  BikeDockListContract.swift
//  PhillyBikeDock-VIPER
//
//  Created by Jack Amoratis on 1/7/18.
//  Copyright © 2018 Jack Amoratis All rights reserved.
//

import UIKit
protocol BikeDockListWireframe : class {
    weak var viewController: UIViewController? { get set }
}

protocol BikeDockListView : class {
    var presenter: BikeDockListPresentation! { get set }
    
    func showNoContentScreen()
    func showBikeDocksData(_ bikeDocks: BikeDock)
}

protocol BikeDockListPresentation: class {
    weak var view: BikeDockListView? { get set }
    var interactor: BikeDockListUseCase! { get set }
    var router: BikeDockListWireframe! { get set }
    
    func viewDidLoad()
}

protocol BikeDockListUseCase: class {
    weak var output: BikeDockListInteractorOutput! { get set }
    
    func fetchBikeDockList ()
}

protocol BikeDockListInteractorOutput : class {
    func bikeDockListFetched(_ bikeDocks: BikeDock)
    func bikeDockListFetchFailed()
}
