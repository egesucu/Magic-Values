//
//  RootView.swift
//  Magic Values
//
//  Created by Ege Sucu on 28.05.2023.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        TabView {
            GoodView()
                .tabItem {
                    Label("Good View", systemImage: "plus.circle.fill")
                }
            BadView()
                .tabItem {
                    Label("Bad View", systemImage: "minus.circle.fill")
                }
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
