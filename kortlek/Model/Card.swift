//
//  Card.swift
//  kortlek
//
//  Created by Benjamin on 2019-04-05.
//  Copyright © 2019 Benjamin. All rights reserved.
//

import Foundation

struct Card {
    let suite : String
    let rank : String
    
    func toString() -> String {
    return "\(rank) of \(suite)"
    }
}
