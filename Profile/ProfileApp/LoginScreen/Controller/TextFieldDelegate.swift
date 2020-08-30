//
//  TextFieldDelegate.swift
//  Profile
//
//  Created by BEREZIN Stanislav on 29.08.2020.
//  Copyright © 2020 BEREZIN Stanislav. All rights reserved.
//

import UIKit

extension LoginScreenVC: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.returnKeyType == .next {
            passwordTF.becomeFirstResponder()
        } else {
            loginAction(loginButton)
            performSegue(withIdentifier: "goToTabBar", sender: nil)
        }
        return true
    }
    
    func  textFieldDidBeginEditing(_ textField: UITextField) {
        userNameTF.enablesReturnKeyAutomatically = true
        passwordTF.enablesReturnKeyAutomatically = true
    }
}

