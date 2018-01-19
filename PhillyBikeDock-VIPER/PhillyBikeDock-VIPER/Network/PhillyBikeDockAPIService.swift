//
//  PhillyBikeDockAPIService.swift
//  PhillyBikeDock-VIPER
//
//  Created by Jack Amoratis on 1/10/18.
//  Copyright © 2018 Jack Amoratis. All rights reserved.
//

import Foundation
import ObjectMapper
import RxSwift

class PhillyBikeDockAPIService {
    static func fetchBikeDocks() -> Observable<[BikeDock]> {
        return Observable.create { observer -> Disposable in
        
            
            return Disposables.create(with: {
                print("observable")
            })
        }
    }
}
