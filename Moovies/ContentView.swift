//
//  ContentView.swift
//  Moovies
//
//  Created by William Souef on 17/12/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        VStack(alignment: .trailing, spacing: 70){
            
                
                Button(action: {
                    print("clicked")
                }, label: {
                    InfoButton()
                })
                .padding(50)
              
              
                     
            Text("Cinema Ticket")
                .fontWeight(.bold)
                .font(.largeTitle)
                .foregroundColor(Color.yellow)
                .shadow(color: .orange, radius: 10, x: 0, y: 10)
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
