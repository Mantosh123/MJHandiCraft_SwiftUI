//
//  MainView.swift
//  MJHandiCraft
//
//  Created by Mantosh Kumar on 05/01/25.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        
        TabView {
            HomeView()
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
        }
    }
}

#Preview {
    MainView()
}
