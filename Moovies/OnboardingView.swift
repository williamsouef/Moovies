//
//  OnboardingView.swift
//  Moovies
//
//  Created by William Souef on 18/12/2022.
//

import SwiftUI

struct OnboardingView: View {
    
    //MARK: CONNECTION MODELVIEW
    @StateObject var infodata = InfoDatas()
    
    @Binding var onboardingIsShowing : Bool

    var body: some View {
        
        ZStack {
            //MARK: BACKGROUND
            Color.background
                .edgesIgnoringSafeArea(.all)
                    
            VStack{
                VStack{
            //MARK: TITLE
            TitleApp()
                      
                Divider()
                    VStack(alignment: .center, spacing: 30){
            // MARK: CONTENERS TEXT
                ForEach(infoList, id: \.id) { index in
                    InfoView(texte: index.text)
                        }
                    }
                    .padding(.vertical,70)
                }
                .padding(.vertical)
                
            //MARK: CLOSING BUTTON
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
