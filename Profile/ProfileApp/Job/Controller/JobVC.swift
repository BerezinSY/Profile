//
//  JobVC.swift
//  Profile
//
//  Created by BEREZIN Stanislav on 30.08.2020.
//  Copyright © 2020 BEREZIN Stanislav. All rights reserved.
//

import UIKit

class JobVC: UIViewController {
    
    @IBOutlet weak var workImage: UIImageView!
    @IBOutlet weak var yearsOfWork: UILabel!
    @IBOutlet weak var detailText: UITextView!
    @IBOutlet weak var segment: UISegmentedControl!
    
    var experience = Experiense.Lg
    
    override func viewDidLoad() {
        super.viewDidLoad()
        load(data: experience.jobDescription)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
    }
    
    @IBAction func chooseJob(_ sender: UISegmentedControl) {
        switch segment.selectedSegmentIndex {
        case 0:
            experience = .Lg
            load(data: experience.jobDescription)
        case 1:
            experience = .Renault
            load(data: experience.jobDescription)
        case 2:
            experience = .Rusal
            load(data: experience.jobDescription)
        default: break
        }
    }
    
    func load(data: JobModel) {
        yearsOfWork.text = data.jobYears
        detailText.text = data.details
        workImage.image = UIImage(named: data.image)
    }
}
