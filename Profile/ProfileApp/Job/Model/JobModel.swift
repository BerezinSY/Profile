//
//  JobModel.swift
//  Profile
//
//  Created by BEREZIN Stanislav on 30.08.2020.
//  Copyright © 2020 BEREZIN Stanislav. All rights reserved.
//

import Foundation

struct JobModel {
    let image: String
    let jobYears: String
    let details: String
}

enum Experiense {
    case Lg
    case Renault
    case Rusal
    
    var jobDescription: JobModel {
        switch self {
        case .Lg:
            return JobModel(image: "LG", jobYears: "2011 - 2014", details: "Инженер по качеству")
        case .Renault:
            return JobModel(image: "RenaultRussia", jobYears: "2014 - 2019", details: "Инженер по развитию поставщиков")
        case .Rusal:
            return JobModel(image: "Rusal", jobYears: "2019 - 2020", details: "Менеджер по качеству")
        }
    }
}


