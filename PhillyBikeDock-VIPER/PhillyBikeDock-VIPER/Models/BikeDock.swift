//
//  BikeDock.swift
//  PhillyBikeDock-VIPER
//
//  Created by R on 1/9/18.
//  Copyright © 2018 R. All rights reserved.
//
import Foundation
import ObjectMapper

struct BikeDock {
    var stationName = ""
    
}

extension BikeDock: Mappable {
    
    init?(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        stationName       <- map["stationName"]
    }
}
