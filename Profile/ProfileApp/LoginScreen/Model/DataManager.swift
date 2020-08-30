//
//  DataManager.swift
//  Profile
//
//  Created by BEREZIN Stanislav on 30.08.2020.
//  Copyright © 2020 BEREZIN Stanislav. All rights reserved.
//

import Foundation

// MARK: Data category for reminder
enum DataForReminder {
    case login
    case password
}

struct DataManager {
    
    // MARK: userData sample after receiving
    var userData: UserData {
        sample
    }
    
    // MARK: Internal getter for Login and Password for reminder in alert
    private var login: String {
        var key = ""
        for element in loginData {
            key = element.key
        }
        return key
    }
    
    private var password: String {
        return loginData[login] ?? ""
    }
    
    private let loginData = ["Alexey": "12345678"] // Login and password
    
    private var sample: UserData!
    
    // MARK: Receive data and final check in LoginScreenVC
    mutating func receiveData(userName: String?,
                              password: String?,
                              showAlert: (String?, String?) -> ()) {
        loadData(userName: userName, password: password)
        let isSuccessData = isValidData(from: sample)
        if !isSuccessData {
            showAlert("Attention", "Wrong login or password")
            clearLoginAndPassword()
        }
    }
    
    // MARK: Clear area when come back to LoginScreen
    mutating func clearLoginAndPassword() {
        sample = UserData(userName: "", password: "")
    }
    
    // MARK: Remind Login or password and show it in alert
    func remind(data: DataForReminder, with alert: (String, String) -> ()) {
        switch data {
            
        case .login:
            alert("Login", "Your login is \(login)")
        case .password:
            alert("Password", "Your password is \(password)")
        }
    }
    
    // MARK: Receive initial sample from textFields
    private mutating func loadData(userName: String?, password: String?) {
        sample = UserData(userName: userName, password: password)
    }
    
    // MARK: Receive checkStatus of valid data
    private func isValidData(from userData: UserData) -> Bool {
        var correctUser = false
        var correctPassword = false
        for element in loginData {
            correctUser = userData.userName == element.key
            correctPassword = userData.password == element.value
        }
        return correctUser && correctPassword
    }
}
