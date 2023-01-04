//
//  InfoData.swift
//  Moovies
//
//  Created by William Souef on 22/12/2022.
//

import Foundation

// MARK: MODEL VIEW TO CONNECT THE DATA TO THE VIEW
class InfoDatas : ObservableObject {
    @Published var infoList : [Infodata] = []
}
