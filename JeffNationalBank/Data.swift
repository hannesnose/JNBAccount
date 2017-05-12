//
//  Data.swift
//  JeffNationalBank
//
//  Created by hannes nose on 5/4/17.
//  Copyright © 2017 hannes nose. All rights reserved.
//

import Foundation

class JNBAccount {
    static let instance = JNBAccount(users: [:])
    
    var users: [Int: User]
    
    init(users: [Int: User]) {
        self.users = users
    }
    
    struct User {
        var userId:Int
        var firstname: String
        var lastname: String
        var email: String
        var password: String
        
    }
    
    func nextUserId(users: [Int: User]) -> Int {
        if let max = users.keys.max() {
            return max + 1
        } else {
            return 0
        }
    }
    
    func createAccount(firstname: String, lastname: String, email: String, password: String) -> Int{
        /* initialize an account and add it to accounts */
        let newUser = User(userId: nextUserId(users: users), firstname: firstname, lastname: lastname, email: email, password: password)
        users[newUser.userId] = newUser
        return newUser.userId
    }
    
    
    /// Tries to log a user in. If the user isn't found, or the password is wrong, we ???
    ///
    /// - Parameters:
    ///   - email: the user's email
    ///   - password: the user's password
    func login(email:String, password:String, proceed: () -> Void) {
        if let user = userFor(email: email), password == user.password {
            proceed()
        } else {
            alertError()
        }
    }
    
    func alertError() {
        print("something went wrong")
    }
    
    
    /// Tries to find a user. Returns nil if no users are found.
    ///
    /// - Parameter email: the user's email
    /// - Returns: an optional user
    func userFor(email: String) -> User? {
        for (_, user) in users {
            if user.email == email {
                return user
            }
        }
        return nil
    }
}



struct Account {
    var userId:Int
    var customer: String
    var accountNumber: Int
    var balance: Double
    var accountType: AccountType
}

enum AccountType {
    case checking
    case savings
    
}




