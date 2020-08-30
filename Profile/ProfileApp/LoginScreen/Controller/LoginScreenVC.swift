//
//  LoginScreenVC.swift
//  Profile
//
//  Created by BEREZIN Stanislav on 28.08.2020.
//  Copyright © 2020 BEREZIN Stanislav. All rights reserved.
//

import UIKit

class LoginScreenVC: UIViewController {
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    private var manager = DataManager()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    @IBAction func loginAction(_ sender: UIButton) {
        manager.receiveData(userName: userNameTF.text,
                            password: passwordTF.text,
                            showAlert: showAlert)
        passwordTF.text = manager.userData.password
    }
    
    @IBAction func forgotUserNameAction(_ sender: UIButton) {
        manager.remind(data: .login, with: showAlert)
    }
    
    @IBAction func forgotPasswordAction(_ sender: UIButton) {
        manager.remind(data: .password, with: showAlert)
    }
    
    @IBAction func comeBack(with segue: UIStoryboardSegue) {
        manager.clearLoginAndPassword()
        userNameTF.text = manager.userData.userName
        passwordTF.text = manager.userData.password
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        transferData(for: segue)
    }
    
    // MARK: Transfer data
    private func transferData(for segue: UIStoryboardSegue) {
        guard let mainTabBarVC = segue.destination as? UITabBarController,
        let profileNavigationVC = mainTabBarVC.viewControllers?.first as? UINavigationController,
        let profileVC = profileNavigationVC.topViewController as? ProfileVC else { return }
        profileVC.userData = manager.userData
    }
}
