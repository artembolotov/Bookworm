//
//  ContentView.swift
//  Bookworm
//
//  Created by artembolotov on 16.02.2023.
//

import SwiftUI

struct PushButton: View {
    let title: String
    @Binding var isOn: Bool
    
    var onColors = [Color.red, Color.yellow]
    var offColors = [Color(white: 0.6), Color(white: 0.4)]
    
    var body: some View {
        Button(title) {
            isOn.toggle()
        }
        .padding()
        .background(
            LinearGradient(colors: isOn ? onColors : offColors, startPoint: .top, endPoint: .bottom)
        )
        .foregroundColor(.white)
        .clipShape(Capsule())
        .shadow(radius: isOn ? 0 : 5)
        
    }
}

struct ContentView: View {
    @State private var rememberMe = false
    
    var body: some View {
        VStack {
            PushButton(title: "Remember me", isOn: $rememberMe)
            Text(rememberMe ? "On" : "Off")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
