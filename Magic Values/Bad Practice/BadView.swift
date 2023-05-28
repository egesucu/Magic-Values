//
//  BadView.swift
//  Magic Values
//
//  Created by Ege Sucu on 28.05.2023.
//

import SwiftUI

struct BadView: View {
    
    @State private var number = 0
    @State private var showWarning = false
    
    var body: some View {
        VStack(spacing: 50) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Button {
                if number < 25 {
                    number += 1
                } else {
                    showWarning.toggle()
                }
               
            } label: {
                Text("Tap Me")
            }
            .buttonStyle(.bordered)
            Text("\(number)")

        }
        .padding()
        .alert("You have reached out the maximum of \(number)", isPresented: $showWarning) {
            Button("Okey") {
                
            }
        }
    }
}

struct BadView_Previews: PreviewProvider {
    static var previews: some View {
        BadView()
    }
}
