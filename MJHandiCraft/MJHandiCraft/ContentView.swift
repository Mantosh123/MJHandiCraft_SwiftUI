//
//  ContentView.swift
//  MJHandiCraft
//
//  Created by Mantosh Kumar on 03/01/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
        
        
        Text(" Hello MJHandiCraft")
        
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
