//
//  PersonModel.swift
//  Profile
//
//  Created by BEREZIN Stanislav on 30.08.2020.
//  Copyright © 2020 BEREZIN Stanislav. All rights reserved.
//

import Foundation

struct PersonModel {
    let image: String
    let name: String
    let age: String
    let horoscope: String
}

struct PersonDataManager {
    
    static func createSample() -> PersonModel {
        PersonModel(image: "PersonPhoto", name: "Станислав", age: "34", horoscope: "Рыбы")
    }
}
