//
//  Home.swift
//  Moovies
//
//  Created by William Souef on 29/12/2022.
//

import SwiftUI

struct Home: View {
    
    @StateObject var modeldata = ModelDatas()
    
    var colums = [GridItem(.fixed(160),spacing: 20)]
    var body: some View {
        ZStack(alignment: .top){
            
            VStack {
                TitleApp()
                
                Text("Top movies")
                    .bold()
                    .frame(maxWidth:.infinity,alignment: .leading)
                    .foregroundColor(Color(uiColor: .systemGray2))
                    .font(.subheadline)
                    .textCase(.uppercase)
                    .padding(.top,10)
                  
                
            }
            
            .ignoresSafeArea(.all)
            
            
            ScrollView(.horizontal){
                VStack {
                    HStack(spacing:17) {
                        ForEach(listMovies, id: \.id) {
                            index in
                            MovieContener(name: index.name, description: index.description, image: index.image, price: index.price)
                            
                        }
                        
                        
                        .padding(.bottom,30)
                        .padding(.top,100)
                    }
                    HStack(spacing:17) {
                        ForEach(listMovies, id: \.id) {
                            movie in
                            MovieContener(name: movie.name, description: movie.description, image: movie.image, price: movie.price)
                            
                        }
                    }
                    
                    
                }
                
            }
        }
    }
}
struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home().preferredColorScheme(.dark)
    }
}
