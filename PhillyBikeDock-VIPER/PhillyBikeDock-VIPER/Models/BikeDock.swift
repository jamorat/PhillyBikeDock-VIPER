//
//  BikeDock.swift
//  PhillyBikeDock-VIPER
//
//  Created by R on 1/9/18.
//  Copyright © 2018 R. All rights reserved.
//
import Foundation
enum BackendError: Error {
    case urlError(reason: String)
    case objectSerialization(reason: String)
}

struct BikeDock : Codable {
    
    let type: String
    let features: [Features]
    init?(dict: [String: Any]){
        
        guard let type = dict["type"] as? String, let features = dict["features"] as? [Features] else {
            return nil
        }
        
        self.type = type
        self.features = features
    }
}

struct Features : Codable {
    
    let type: String
    let properties: Properties
    let geometry: Geometry
    init?(dict: [String: Any]){
        
        guard let type = dict["type"] as? String, let properties = dict["properties"] as? Properties, let geometry = dict["geometry"] as? Geometry else {
            return nil
        }
        self.type = type
        self.properties = properties
        self.geometry = geometry
        
    }
}

struct Properties : Codable {
    
    let name: String
    let addressStreet: String
    let addressCity: String
    let addressState: String
    let addressZipCode: String
    let bikesAvailable: Int
    let kioskId: Int
    let totalDocks: Int
    let docksAvailable: Int
    
    init?(dict: [String: Any]){
        
        guard let name = dict["name"] as? String,
            let addressStreet = dict["addressStreet"] as? String,
            let addressCity = dict["addressCity"] as? String,
            let addressState = dict["addressState"] as? String,
            let addressZipCode = dict["addressZipCode"] as? String,
            let bikesAvailable = dict["bikesAvailable"] as? Int,
            let kioskId = dict["kioskId"] as? Int,
            let totalDocks = dict["totalDocks"] as? Int,
            let docksAvailable = dict["docksAvailable"] as? Int
            else {
                return nil
        }
        self.name = name
        self.addressStreet = addressStreet
        self.addressCity = addressCity
        self.addressState = addressState
        self.addressZipCode = addressZipCode
        self.bikesAvailable = bikesAvailable
        self.kioskId = kioskId
        self.totalDocks = totalDocks
        self.docksAvailable = docksAvailable
        
    }
}

struct Geometry : Codable {
    
    let type: String
    let coordinates: [Double]
    init?(dict: [String: Any]){
        
        guard let type = dict["type"] as? String, let coordinates = dict["coordinates"] as? [Double] else {
            return nil
        }
        self.type = type
        self.coordinates = coordinates
        
    }
}
