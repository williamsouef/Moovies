//
//  ContentView.swift
//  Moovies
//
//  Created by William Souef on 17/12/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var onboardingIsShowing = false
    
    var body: some View {
        
        
        VStack(alignment: .trailing, spacing: 70){
            
            //MARK: INFO BUTTON
            Button(action: {
                onboardingIsShowing = true
            }){
                InfoButton()
            }.sheet(isPresented:$onboardingIsShowing, onDismiss:{},content:{
                OnboardingView(onboardingIsShowing: $onboardingIsShowing)
            })
            .padding(50)
              //MARK: TITLE
            TitleApp()
                .padding(70)
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
