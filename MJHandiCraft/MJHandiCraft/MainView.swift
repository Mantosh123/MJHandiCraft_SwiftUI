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
            
            HomeView()
                .tabItem {
                    Label("Profile", systemImage: "list.dash")
                }
        }
    }
    
}
