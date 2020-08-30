//
//  ProfileScreenDataManager.swift
//  Profile
//
//  Created by BEREZIN Stanislav on 30.08.2020.
//  Copyright © 2020 BEREZIN Stanislav. All rights reserved.
//

import Foundation

struct ProfileScreenDataManager {
    
    func load(data: UserData) -> String {
        data.userName ?? ""
    }
}
