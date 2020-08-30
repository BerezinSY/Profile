//
//  PersonVC.swift
//  Profile
//
//  Created by BEREZIN Stanislav on 29.08.2020.
//  Copyright © 2020 BEREZIN Stanislav. All rights reserved.
//

import UIKit

class PersonVC: UIViewController {
    
    @IBOutlet weak var personImage: UIImageView!
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var horoscope: UILabel!
    
    var person: PersonModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personImage.layer.cornerRadius = personImage.frame.width / 2
        getDataToView()
    }
    
    private func load(data: PersonModel) {
        personImage.image = UIImage(named: data.image)
        name.text = data.name
        age.text = data.age
        horoscope.text = data.horoscope
    }
    
    private func getDataToView() {
        person = PersonDataManager.createSample()
        guard let person = person else { return }
        load(data: person)
    }
}
