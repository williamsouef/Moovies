//
//  OnboardingView.swift
//  Moovies
//
//  Created by William Souef on 18/12/2022.
//

import SwiftUI

struct OnboardingView: View {
    
    @Binding var onboardingIsShowing : Bool
    var body: some View {
        
        ZStack {
            
                LinearGradient(colors: [.black,.red], startPoint: .topLeading, endPoint: .bottomLeading)
                    .edgesIgnoringSafeArea(.all)
                    
            VStack{
                VStack{
            TitleApp()
                      
                Divider()
                    VStack(alignment: .center, spacing: 30){
            InfoView(text: "Find the best classic movies")
            InfoView(text: "Buy online and get promotion")
            InfoView(text: "Watch in premiere and enjoy !")
                
                    }
                    .padding(.vertical,70)
                }
                .padding(.vertical)
                Button(action: {
                    onboardingIsShowing = false
                },label: {
                    RoundCloseViews()
                } )
                    
            }
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    
    private static var onboardingIsShowing = Binding.constant(false)
    static var previews: some View {
        OnboardingView(onboardingIsShowing: onboardingIsShowing)
    }
}
