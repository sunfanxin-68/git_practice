//
//  ContentView.swift
//  RandomUsers
//
//  Created by 孫凡欣 on 2023/04/15.
//

import SwiftUI

struct ContentView: View {
    @StateObject var userData = UserData()
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Raw JSON Data:")
                ScrollView {
                    Text(userData.users)
                }
            }
            .padding()
            .navigationTitle("Random Users")
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
