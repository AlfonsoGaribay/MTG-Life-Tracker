//
//  MTGBrain.swift
//  MTG Life Tracker
//
//  Created by Alfonso Garibay on 6/14/21.
//

import Foundation

struct Player {
    var playerID: Int
    var playerHealth = 20
    
    init(_ playerNum: Int) {
        self.playerID = playerNum
    }
}
