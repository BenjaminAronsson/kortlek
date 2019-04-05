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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let deck = Deck()
        
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
    }

    @objc func nextButtonPressed(_ sender : UIButton) {
        
    }
    
}

