//
//  ViewController.swift
//  Homework 3 @swiftiscool
//
//  Created by Михаил on 26.11.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var david = David()
        var lucy = Lucy()
        var rebecca = Rebecca()
        var nightCity = NightCity(sandevistanOwner: david, cyberdeckOwner: lucy, gunOwner: rebecca)

        nightCity.welcomeInNightCity()
        nightCity.sandevistanFight(sandevistan: david)
        nightCity.netrunnerFight(cyberdeck: lucy)
        nightCity.shooterFight(shooter: rebecca)
        
    }
    
}

