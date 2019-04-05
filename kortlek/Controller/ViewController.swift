//
//  ViewController.swift
//  kortlek
//
//  Created by Benjamin on 2019-04-05.
//  Copyright © 2019 Benjamin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let cardButton : UIButton = {
        let button = UIButton(frame: .zero)
        button.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        return button
    }()
    
    var cardCount : Int = 1 {
        didSet {
            countLabel.text = "\(oldValue)"
        }
    }
    
    let countLabel : UILabel = {
        let label = UILabel(frame: .zero)
        label.textAlignment = .center
        label.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.text = "1"
        return label
    }()
    
    var deck = Deck()
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
        
    }
    
    
    func setupUI() {
        //UIScreen.main.bounds
        let size = view.frame.size
        let witdh = size.width
        let height = size.height
        
        let frame = CGRect(x: witdh / 2 - 75, y: height / 2 - 25, width: 150, height: 50)
        cardButton.frame = frame
        cardButton.addTarget(self, action: #selector(nextButtonPressed), for: .touchUpInside)
        view.addSubview(cardButton)
        
        let frame2 = CGRect(x: 50 - 25, y: 75 - 25, width: 50, height: 50)
        countLabel.frame = frame2
        view.addSubview(countLabel)
    }
    
    @objc func nextButtonPressed(_ sender : UIButton) {
        if let nextCard = deck.drawTopCard() {
            cardButton.setTitle(nextCard.toString(), for: .normal)
            cardCount += 1
        }
        else {
            cardButton.setTitle("Out of cards!", for: .normal)
        }
    }
    
}

