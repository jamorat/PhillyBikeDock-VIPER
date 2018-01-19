//
//  BikeDockInteractor.swift
//  BikeDock
//
//  Created by Pedro Henrique Prates Peralta on 3/17/16.
//  Copyright © 2017 Pedro Peralta. All rights reserved.
//

import Foundation
import RxSwift

class BikeDockListInteractor: BikeDockListUseCase {
    
    weak var output: BikeDockListInteractorOutput!
    private var disposeBag = DisposeBag()
    
    func fetchBikeDockList() {
        BikeDockApiService
            .fetchBikeDock()
            .subscribe(
                onNext: { BikeDock in
                    self.output.bikeDockListFetched(BikeDock)
            },
                onError: { error in
                    self.output.bikeDockListFetchFailed()
            }
            )
            .disposed(by:disposeBag)
    }
}
