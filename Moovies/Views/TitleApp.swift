//
//  TitleApp.swift
//  Moovies
//
//  Created by William Souef on 18/12/2022.
//

import SwiftUI

struct TitleApp: View {
    var body: some View {
        
        //MARK: TITLE TEXT
        Text("MOOVIES")
            .fontWeight(.bold)
            .font(.largeTitle)
            .foregroundColor(Color.yellow)
            .shadow(color: .orange, radius: 10, x: 0, y: 10)
    }
}

struct TitleApp_Previews: PreviewProvider {
    static var previews: some View {
        TitleApp()
            .preferredColorScheme(.dark)
    }
}
