//
//  BikeDockListRouter.swift
//  PhillyBikeDock-VIPER
//
//  Created by Jack Amoratis on 1/7/18.
//  Copyright © 2018 Jack Amoratis All rights reserved.
//

import UIKit
class BikeDockListRouter: BikeDockListWireframe {
    weak var viewController: UIViewController?
    
    static func assembleModule() -> UIViewController {
        let view = R.storyboard.bikeDockListStoryboard.bikeDockListViewController()
        let presenter = BikeDockListPresenter()
        let interactor = BikeDockListInteractor()
        let router = BikeDockListRouter()
        
        let navigation = UINavigationController(rootViewController: view!)
        
        view?.presenter = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        interactor.output = presenter
        
        router.viewController = view
        
        return navigation
    }
}
