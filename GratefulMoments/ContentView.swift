//
//  ContentView.swift
//  GratefulMoments
//
//  Created by Ismail Mujanovic on 14. 11. 2025..
//

import SwiftUI

struct ContentView: View {
    @State private var isPresented = false
    
    var body: some View {
        VStack {
            Button("Create a grateful moment") {
                isPresented = true
            }
            .buttonStyle(.bordered)
            .sheet(isPresented: $isPresented) {
                MomentEntryView()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .sampleDataContainer()
}
