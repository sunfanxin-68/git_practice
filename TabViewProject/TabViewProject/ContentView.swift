//
//  ContentView.swift
//  TabViewProject
//
//  Created by 孫凡欣 on 2023/04/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("Home View")
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            Text("Profile View")
                .tabItem {
                    Label("Profile", systemImage: "person.circle.fill")
                }
            
        }
        .tabViewStyle(PageTabViewStyle())
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
