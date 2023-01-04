//
//  MovieModel.swift
//  Moovies
//
//  Created by William Souef on 24/12/2022.
//

import Foundation


struct Movie : Identifiable {
    let id = UUID()
    let name : String
    let description : String
    let image : String
    let price : Int
}


let listMovies = [Movie(name: "Avatar", description: "the new avatar ", image: "avatar", price: 20),
Movie(name: "James Bond", description: "the last james bond", image: "jamesbond", price: 10),
Movie(name: "Batman", description: "the last batman", image: "batman", price: 15),
Movie(name: "Black Panther", description: "the best Marvel movie", image: "blackpanther", price: 20),
Movie(name: "Godfather", description: "The best action movie ", image: "leparrain", price: 10)]
