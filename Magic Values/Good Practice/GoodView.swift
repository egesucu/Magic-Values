//
//  GoodView.swift
//  Magic Values
//
//  Created by Ege Sucu on 28.05.2023.
//

import SwiftUI

struct GoodView: View {
    
    @State private var number = 0
    @State private var showWarning = false
    
    var body: some View {
        VStack(spacing: Spacing.defaultVerticalSpacing) {
            Image(systemName: SFSymbols.globeIcon)
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(Strings.helloWorld)
            Button {
                if number < Numbers.maximumNumber {
                    number += 1
                } else {
                    showWarning.toggle()
                }
               
            } label: {
                Text(Strings.tapButtonText)
            }
            .buttonStyle(.bordered)
            Text("\(number)")
        }
        .padding()
        .alert(String(format: Strings.Error.maximumNumber, number), isPresented: $showWarning) {
            Button(Strings.okeyText) {
                
            }
        }
    }
}

struct GoodView_Previews: PreviewProvider {
    static var previews: some View {
        GoodView()
    }
}

