//
//  MovieContener.swift
//  Moovies
//
//  Created by William Souef on 24/12/2022.
//

import SwiftUI

struct MovieContener: View {
    
    let buttonPressed : Bool = false
    let name : String
    let description : String
    let image : String
    let price : Int
    
    var body: some View {
        
        ZStack {
            
         
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 370, height: 250, alignment: .center)
                .background(
                  Color.background
                    )
                .cornerRadius(15)
             .opacity(0.11)
             .shadow(color: Color.brown, radius: 5, x: 10, y: 20)
               
            VStack {
                
                Text(name)
                    .font(.largeTitle)
                    .bold()
                    .scaledToFit()
                
                HStack(alignment: .top,spacing: 5){
                    Image(image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 150, height: 150)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    VStack ( spacing: 30){
                        Text(description)
                            .font(.headline)
                            
                        .multilineTextAlignment(.center)
                        Text("Buy it now for only \(price)")
                            .foregroundColor(.black)
                            .bold()
                            .font(.headline)
                            .background(
                            RoundedRectangle(cornerRadius: 5))
                            .frame(width: 200, height: 10)
                        if buttonPressed {
                            RoundedRectangle(cornerRadius: 30)
                                .foregroundColor(.brown)
                                .opacity(0.1)
                                .frame(width:60,height: 60)
                            
                                .overlay{
                                    Image(systemName: "heart.fill")
                                        .frame(width: 30,height: 50)
                                }
                        } else {
                            RoundedRectangle(cornerRadius: 30)
                                .foregroundColor(.brown)
                                .opacity(0.1)
                                .frame(width:60,height: 60)
                            
                                .overlay{
                                    Image(systemName: "heart")
                                        .frame(width: 30,height: 50)
                                }
                        }
                    }
                }
               
            }
        }
       
    }
        
}

struct MovieContener_Previews: PreviewProvider {
    static var previews: some View {
        MovieContener(name: "Le Parrain",description: "Blablabla", image: "leparrain",price: 10)
            .preferredColorScheme(.dark)
           
    }
}
