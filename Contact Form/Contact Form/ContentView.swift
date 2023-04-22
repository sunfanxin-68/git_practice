//
//  ContentView.swift
//  Contact Form
//
//  Created by 孫凡欣 on 2023/04/09.
//
import SwiftUI

struct ContentView: View {
    @State private var emailAddress = ""
    @State private var message = "ここでメッセージを書く..."
    @State private var subject = "Help"
    @State private var includeLogs = false
    
    @State private var preferredContactMethod = ContactMethod.email
    @State private var phoneNumbers = ""
     
    enum ContactMethod {
        case email, phone
    }
     
    

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("どこで連絡する？")) {
                    Picker("連絡先", selection: $preferredContactMethod) {
                        Text("Email").tag(ContactMethod.email)
                        Text("Phone").tag(ContactMethod.phone)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    
                    switch preferredContactMethod {
                    case .email:
                        TextField("Email Address", text: $emailAddress)
                            .textContentType(.emailAddress)
                            .disableAutocorrection(true)
                    case .phone:
                        TextField("Phone Number", text: $phoneNumbers)
                    }
                }
                
                Section(header: Text("何か手伝うこと？")) {
                    Picker("件名", selection: $subject) {
                        ForEach(["ヘルプ", "アドバイス", "不具合報告"], id: \.self) { subject in
                            Text(subject)
                        }
                    }
                }
                
                Section(header: Text("簡単な説明してください")) {
                    TextEditor(text: $message)
                }
                
                Section(footer: Text("匿名でメッセージを発送いたします")) {
                    Toggle("ログを含める", isOn: $includeLogs)
                }
                
                Button("提出する", action: {
                    print("Submit button tapped")
                })
            }
            .navigationTitle("お問い合わせ")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
