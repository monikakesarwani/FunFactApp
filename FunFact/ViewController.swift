//
//  ViewController.swift
//  FunFact
//
//  Created by Anil on 12/7/18.
//  Copyright © 2018 teamtreehouse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var FunFactButton: UIButton!
    let factProvider = FactProvider()
    
    let colorProvider = BackgroundColorProvider()
    
    @IBOutlet weak var FunFactLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        FunFactLabel.text = factProvider.randomNumber()
    }

    @IBAction func FunFact() {
        
        FunFactLabel.text = factProvider.randomNumber()
        let randomColor = colorProvider.randomColor()
    view.backgroundColor = randomColor
        FunFactButton.tintColor = randomColor
}

}
