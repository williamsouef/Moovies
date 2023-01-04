//
//  InfoView.swift
//  Moovies
//
//  Created by William Souef on 18/12/2022.
//

import SwiftUI

struct InfoView: View {
    
    var texte : String
    
    var body: some View {
        
        
 // MARK: CONTENERS
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.black)
            .frame(width: 350, height: 50)
            .overlay(
                HStack{
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(Color.yellow)
                    Text(texte)
                .foregroundColor(Color.yellow)
                }
                )


    }
}



struct InfoView_Previews: PreviewProvider {
    
    static var previews: some View {
        InfoView(texte: "hiii")
    }
}
