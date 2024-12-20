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
            HStack(alignment: .center, spacing: 8) {
                Text(message.text)
                    .foregroundStyle(.white)
                    .padding()
                    .background(fromYou ? .blue : .green)
                    .clipShape(
                        RoundedRectangle(cornerRadius: 16)
                    )
                    .overlay(alignment: .bottomLeading) {
                        Image(systemName: "arrowtriangle.down.fill")
                            .font(.title)
                            .rotationEffect(.radians(.pi/4))
                            .scaleEffect(x: 0.8)
                            .offset(x: -12, y: 12)
                            .foregroundStyle(fromYou ? .blue : .green)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text(message.date.formatted(date: .omitted, time: .shortened))
                    .font(.caption2)
                    .foregroundStyle(.primary)
                    .fontWeight(.light)
            }
            
            Text(message.firstName)
                .font(.footnote)
                .foregroundStyle(.secondary)
                .fontWeight(.medium)
                .offset(x: 20)
        }
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
