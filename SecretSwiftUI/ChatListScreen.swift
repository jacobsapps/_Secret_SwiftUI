//
//  ChatListScreen.swift
//  SecretSwiftUI
//
//  Created by Jacob Bartlett on 12/01/2025.
//

import SwiftUI

struct ChatListScreen: View {
    @State private var reply: String = ""
    @State private var messages = chatMessages
    
    var body: some View {
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
                    .padding(.vertical)
                    .colorScheme(.light)
                
                ForEach(messages) {
                    ChatMessageView(message: $0, fromYou: $0.firstName == "Bob")
                }
            }
            .navigationTitle("Chat")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
