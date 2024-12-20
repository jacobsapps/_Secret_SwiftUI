//
//  SecretTabView.swift
//  SecretSwiftUI
//
//  Created by Jacob Bartlett on 11/12/2024.
//

import SwiftUI

struct SecretTabView<Content: View>: View {
    
    @Binding var selectedTab: AnyHashable?
    var content: Content
    
    init(
        selectedTab: Binding<AnyHashable?>,
        @ViewBuilder content: () -> Content
    ) {
        self._selectedTab = selectedTab
        self.content = content()
    }
    
    var body: some View {
        _VariadicView.Tree(SecretTabViewLayout(selectedTab: $selectedTab)) {
            content
        }
    }
}

struct SecretTabItem: View {
    
    @ScaledMetric(relativeTo: .largeTitle) var tabHeight = 64
    @ScaledMetric(relativeTo: .body) var spacing = 4
    
    let icon: String
    let title: String
    
    var body: some View {
        VStack(spacing: spacing) {
            Image(systemName: icon)
                .font(.body)
            Text(title)
                .font(.body)
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .frame(height: tabHeight)
        .contentShape(Rectangle())
    }
}

private struct SecretTabViewLayout: _VariadicView_MultiViewRoot {
    
    @Binding var selectedTab: AnyHashable?
    
    func body(children: _VariadicView_Children) -> some View {
        VStack {
            children
                .first(where: { $0.id == selectedTab })
                .frame(maxHeight: .infinity)
                        
            HStack {
                ForEach(children) { child in
                    tab(for: child)
                }
            }
        }
        .onAppear {
            if selectedTab == nil {
                selectedTab = children.first?.id
            }
        }
    }
    
    @ViewBuilder
    func tab(for child: _VariadicView_Children.Element) -> some View {
        if let tabLabel = child[SecretTabItemTrait.self] {
            Button(action: {
                selectedTab = child.id
            }, label: {
                tabLabel
            })
            .frame(maxWidth: .infinity, alignment: .center)
        }
    }
}

extension View {
    func secretTabItem<Content: View>(@ViewBuilder content: () -> Content) -> some View {
        _trait(SecretTabItemTrait.self, AnyView(content()))
    }
}

struct SecretTabItemTrait: _ViewTraitKey {
    static let defaultValue: AnyView? = nil
}
