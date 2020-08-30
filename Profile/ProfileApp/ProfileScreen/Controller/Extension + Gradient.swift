//
//  Extension + Gradient.swift
//  Profile
//
//  Created by BEREZIN Stanislav on 30.08.2020.
//  Copyright © 2020 BEREZIN Stanislav. All rights reserved.
//

import UIKit

extension ProfileVC {
    
    func addGradientLayer() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.systemOrange.cgColor, UIColor.systemPurple.cgColor]
        gradientLayer.frame = view.layer.bounds
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
