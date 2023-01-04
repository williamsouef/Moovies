//
//  Info.swift
//  Moovies
//
//  Created by William Souef on 22/12/2022.
//

import Foundation
import SwiftUI



struct Info : Identifiable {
    var id = UUID()
    let text : String
}


var firstInfo = Info(text:"Find the best classic movies")
var secondInfo = Info(text:"Buy online and get promotion")
var theirdInfo = Info(text: "Watch in premiere and enjoy !")


var info : [Info] = [firstInfo,secondInfo,theirdInfo]
