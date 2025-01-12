//
//  ContentView.swift
//  SecretSwiftUI
//
//  Created by Jacob Bartlett on 11/12/2024.
//

import SwiftUI

struct ChatMessageView: View {
    
    let message: ChatMessage
    let fromYou: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            name
            
            HStack(alignment: .center, spacing: 8) {
                if fromYou {
                    timestamp
                }
                
                messageBubble
                
                if !fromYou {
                    timestamp
                }
            }
            .frame(maxWidth: .infinity, alignment: fromYou ? .trailing : .leading)
        }
    }
    
    private var name: some View {
        Text(message.firstName)
            .font(.footnote)
            .foregroundStyle(.secondary)
            .fontWeight(.medium)
            .offset(x: fromYou ? -20 : 20)
            .frame(maxWidth: .infinity, alignment: fromYou ? .trailing : .leading)
            .padding(.top)
    }
    
    private var messageBubble: some View {
        Text(message.text)
            .foregroundStyle(.white)
            .padding()
            .background(fromYou ? .blue : .green)
            .clipShape(
                RoundedRectangle(cornerRadius: 16)
            )
            .overlay(alignment: fromYou ? .bottomTrailing : .bottomLeading) {
                Image(systemName: "arrowtriangle.down.fill")
                    .font(.title)
                    .rotationEffect(.radians((fromYou ? -1 : 1) * .pi/4))
                    .scaleEffect(x: 0.8)
                    .offset(x: fromYou ? 12 : -12, y: 12)
                    .foregroundStyle(fromYou ? .blue : .green)
            }
    }
    
    private var timestamp: some View {
        Text(message.date.formatted(date: .omitted, time: .shortened))
            .font(.caption2)
            .foregroundStyle(.secondary)
            .fontWeight(.light)
    }
}

struct ChatList<Content: View>: View {
    
    var content: Content

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        _VariadicView.Tree(ChatLayout()) {
            content
        }
    }
}

struct ChatLayout: _VariadicView_MultiViewRoot {
    
    func body(children: _VariadicView.Children) -> some View {
        List {
            ForEach(children) { child in
                child
                    .inverted()
                    .listRowSeparator(.hidden)
            }
        }
        .listStyle(.plain)
        .inverted()
    }
}

struct Inverted: ViewModifier {
    func body(content: Content) -> some View {
        content
            .rotationEffect(.radians(Double.pi))
            .scaleEffect(x: -1, y: 1, anchor: .center)
    }
}

extension View {
    func inverted() -> some View {
        modifier(Inverted())
    }
}
