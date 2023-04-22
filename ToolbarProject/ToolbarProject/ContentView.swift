//
//  ContentView.swift
//  ToolbarProject
//
//  Created by 孫凡欣 on 2023/04/08.
//

import SwiftUI

struct ContentView: View {
    @State private var showingSheet = false
    
    var body: some View {
        NavigationView {
            Text("Hello, world!")
                .navigationBarTitle("Main View")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("Show Sheet") {
                            showingSheet = true
                        }
                    }
                }
                .sheet(isPresented: $showingSheet) {
                    SheetView()
                }
        }
    }
}

struct SheetView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationView {
            Text("This is the sheet view")
                .navigationBarTitle("Sheet View")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("Close") {
                            dismiss()
                        }
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
