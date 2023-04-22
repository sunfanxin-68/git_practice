//
//  UserData.swift
//  RandomUsers
//
//  Created by 孫凡欣 on 2023/04/15.
//

import Foundation

@MainActor
class UserData {
    var users: String = ""
    
    init() {
        Task {
            await loadUsers()
        }
    }
    func loadUsers() async {
            do {
                let users = try await UserFetchingClient.getUsers()
                self.users = users
            } catch {
                print(error)
        }
    }
}


