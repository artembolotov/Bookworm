//
//  ContentView.swift
//  Bookworm
//
//  Created by artembolotov on 16.02.2023.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("notes") var notes = ""
    var body: some View {
        NavigationView {
            TextEditor(text: $notes)
                .navigationTitle("Notes")
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
