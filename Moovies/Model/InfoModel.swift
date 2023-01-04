//
//  InfoModel.swift
//  Moovies
//
//  Created by William Souef on 22/12/2022.
//

import Foundation
import SwiftUI

// MARK: DATA FOR THE INFO CONTENERS

struct Infodata : Identifiable {
    let id = UUID()
    let text : String
}



var infoList = [Infodata(text: "Find the best classic movies"),Infodata(text: "Buy online and get promotion"),
Infodata(text: "Watch in premiere and enjoy !")]
