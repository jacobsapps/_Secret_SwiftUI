//
//  SecretSwiftUIApp.swift
//  SecretSwiftUI
//
//  Created by Jacob Bartlett on 11/12/2024.
//

import SwiftUI

@main
struct SecretSwiftUIApp: App {
    
    @State private var selectedTab: AnyHashable?
    @State private var reply: String = ""
    @State private var messages = chatMessages
    
    var body: some Scene {
        WindowGroup {
            SecretTabView(selectedTab: $selectedTab) {
                NavigationView {
                    ChatList {
                        TextField("Reply", text: $reply)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .onSubmit {
                                if !reply.isEmpty {
                                    withAnimation {
                                        messages.append(.init(id: UUID().uuidString, firstName: "Bob", text: reply, date: Date()))
                                        reply = ""
                                    }
                                }
                            }
                        
                        ForEach(messages) {
                            ChatMessageView(message: $0, fromYou: $0.firstName == "Bob")
                        }
                    }
                    .navigationTitle("Chat")
                    .navigationBarTitleDisplayMode(.inline)
                }
                .secretTabItem {
                    SecretTabItem(icon: "ellipsis.message.fill",
                                  title: "Chat")
                }
                
                Text("Car Screen")
                    .secretTabItem {
                        SecretTabItem(icon: "car",
                                      title: "Car")
                    }
                
                Text("Brain Screen")
                    .secretTabItem {
                        SecretTabItem(icon: "brain.head.profile",
                                      title: "Brain")
                    }
            }
        }
    }
}
