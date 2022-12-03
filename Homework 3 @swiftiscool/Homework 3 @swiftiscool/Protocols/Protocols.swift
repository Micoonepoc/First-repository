//
//  Protocols.swift
//  Homework 3 @swiftiscool
//
//  Created by Mykhailo on 26.11.2022.
//

import Foundation

protocol Netrunner {
    
    var name: String { get set }
    var health: Int { get set }
    var nameOfCyberdeck: String { get set }
    var cyberdeckRAM: Int { get set }
    var intelegentLevel: Int { get set }
    var damage: Int? { get set }
    
    func hacking()
    func rechargeRAM()
    mutating func useMedicKit()
    func aboutMe()
}

protocol Sandevistan {
    
    var name: String { get set }
    var health: Int { get set }
    var nameOfSandevistan: String { get set }
    var stamina: Int { get set }
    var agilityLevel: Int? { get set }
    var damage: Int? { get set }
    
    func activateSandevistan()
    func rechargeSandevistan()
   mutating func useMedicKit()
    func aboutMe()
}

protocol shooter {
    
    var name: String { get set }
    var health: Int { get set }
    var nameOfGun: String? { get set }
    var countOfAmmo: Int { get set }
    var strengthLevel: Int { get set }
    var damage: Int? { get set }
    
    func startShooting()
    func reloadGun()
   mutating func useMedicKit()
    func aboutMe()
}
