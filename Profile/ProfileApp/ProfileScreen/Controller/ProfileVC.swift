//
//  ProfileVC.swift
//  Profile
//
//  Created by BEREZIN Stanislav on 28.08.2020.
//  Copyright © 2020 BEREZIN Stanislav. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {

    @IBOutlet weak var customView: UIView!
    @IBOutlet weak var userName: UILabel!
    
    var userData: UserData!
    private let manager = ProfileScreenDataManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userName.text = manager.load(data: userData)
        addGradientLayer()
        customView.layer.cornerRadius = customView.frame.width / 15
    }
}
