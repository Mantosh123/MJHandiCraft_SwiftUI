//
//  SplashView.swift
//  MJHandiCraft
//
//  Created by Mantosh Kumar on 04/01/25.
//

import SwiftUI

struct SplashView: View {
    
    @State var isSplashView: Bool = false
    
    var body: some View {
        ZStack {
            if isSplashView {
//                HomeView()
                MainView()
            } else {
                Color.white
                    .background(.white)
                
                Image("logo")
                    .resizable()
                    .scaledToFit()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                withAnimation {
                    self.isSplashView = true
                }
            }
        }
    }
}

#Preview {
    SplashView()
}
