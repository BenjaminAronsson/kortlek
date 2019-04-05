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
    
    let suites = ["♥", "♠", "♦", "♣"]
    let ranks = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
    
    init() {
        newDeck()
    }
    
    enum typeOfSuite : String {
        case spades = "♠"
        case hearts = "♥"
        case clubs = "♣"
        case diamonds = "♦"
    }
    
    func getRemainingFromSuites(suite : typeOfSuite) -> [Card] {
        var selectedCards = [Card]()
        for card in cards {
            if card.suite == suite.rawValue {
                selectedCards.append(card)
            }
        }
        return selectedCards
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
    
    func drawTopCard() -> Card? {
        if cards.count > 0 {
            let topCard = cards.removeFirst()
            return topCard
        }
        else {
            return nil
        }
    }
    
    func shuffleCard() {
        cards.shuffle()
    }
}
