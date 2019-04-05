//
//  Deck.swift
//  kortlek
//
//  Created by Benjamin on 2019-04-05.
//  Copyright © 2019 Benjamin. All rights reserved.
//

import Foundation

class Deck {
    var cards = [Card]()
    
    let ranksss = ["heart", "diamond", ""]
    let suites = ["♥", "♠", "♦", "♣"]
    let ranks = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
    
    init() {
        newDeck()
    }
    
    //creates new deck
    func newDeck() {
        for suite in suites {
            for rank in ranks {
                let newCard = Card(suite: suite, rank: rank)
                cards.append(newCard)
            }
        }
    }
    
    func drawTopCard() -> Card {
        let topCard = cards.removeFirst()
        return topCard
    }
    
    func shuffleCard() {
        
    }
}
