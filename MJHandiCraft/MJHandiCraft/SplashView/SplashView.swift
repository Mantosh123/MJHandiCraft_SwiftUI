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
                MainView()
            } else {
                Rectangle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [.orange, .blue]),
                            startPoint: .bottomLeading,
                            endPoint: .topTrailing
                        )
                    )
                    .ignoresSafeArea()
                Image("icon_logo")
                    .resizable()
                    .scaledToFit()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
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
