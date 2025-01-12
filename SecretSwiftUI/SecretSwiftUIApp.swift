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
    
    var body: some Scene {
        WindowGroup {
            SecretTabView(selectedTab: $selectedTab) {
                ChatListScreen()
                    .secretTabItem {
                        SecretTabItem(icon: "ellipsis.message.fill",
                                      title: "Chat")
                    }
                
                Text("Car Screen")
                    .foregroundStyle(.black)
                    .secretTabItem {
                        SecretTabItem(icon: "car",
                                      title: "Car")
                    }
                
                Text("Brain Screen")
                    .foregroundStyle(.black)
                    .secretTabItem {
                        SecretTabItem(icon: "brain.head.profile",
                                      title: "Brain")
                    }
            }
            .colorScheme(.dark)
        }
    }
}
