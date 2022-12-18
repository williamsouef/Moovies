//
//  InfoButton.swift
//  Moovies
//
//  Created by William Souef on 17/12/2022.
//

import SwiftUI

struct InfoButton: View {
    var body: some View {
    Image(systemName: "info")
            .foregroundColor(Color.black)
            .font(.headline)
            .background(
         Circle()
            .fill(Color.white)
            .frame(width: 50, height: 50, alignment: .topLeading)
            
         
    )
    }
}

struct InfoButton_Previews: PreviewProvider {
    static var previews: some View {
        InfoButton()
            .preferredColorScheme(.dark)
    }
}
