//
//  Structs.swift
//  Homework 3 @swiftiscool
//
//  Created by Михаил on 26.11.2022.
//

import Foundation

struct Lucy: Netrunner {
    
    var name = "Lucy"
    var health = 100
    var nameOfCyberdeck = "Arasaka MK3"
    var cyberdeckRAM = 8
    var intelegentLevel = 15
    var damage: Int? = 200
    
    func hacking() {
        print("Im using my \(nameOfCyberdeck), start hacking")
    }
    
    func rechargeRAM() {
        print("I need to recharge!")
    }
    
   mutating func useMedicKit() {
        
        if health == 100 {
            print("My health is full. I don't need to use a medickit")
        } else if health < 100 {
            print("I'm using a medickit my health is \(health)")
            self.health = self.health + 10
            print("I'm feeling better, my health now is: \(health)")
        }
    }
    
    func countDamage() -> String? {
        if let damage = damage {
            return ("Damage is: \(damage)")
        } else {
            return "No damage"
        }
    }
    
    func aboutMe() {
        print("Hey hey! name is \(name). My total RAM is: \(cyberdeckRAM) and my intelegent level is: \(intelegentLevel)")
        print(countDamage() ?? "")
    }
    
}

struct David: Sandevistan {
    var name = "David"
    var health = 150
    var nameOfSandevistan = "Falcon Mk.5"
    var stamina = 40
    var agilityLevel: Int? = 20
    var damage: Int? = 300
    
    func activateSandevistan() {
        guard agilityLevel != nil else { return print("Sandevistan can't recognize your level")}
        
        print("I'm using my \(nameOfSandevistan)")
    }
    
    func rechargeSandevistan() {
        switch stamina {
        case 100: print("I don't need to recharge. I'm ready to fight")
        case 70...99: print("I'm feeling good. Let's fight")
        case 40...69: print("I'm already tired. But still can fight")
        case 1...39: print("Can't fight no more. I need to rest")
        case 0: print("\(name) passed out from fatigue")
        default: break
        }
    }
   mutating func useMedicKit() {
        
        if health == 150 {
            print("My health is full. I don't need to use a medickit")
        } else if health < 150 {
            print("I'm using a medickit my health is \(health)")
            self.health = self.health + 10
            print("I'm feeling better, my health now is: \(health)")
        }
    }
    
    func countDamage() -> String? {
        if let damage = damage {
            return ("Damage is: \(damage)")
        } else {
            return "No damage"
        }
    }
    
    func aboutMe() {
        print("Hello! name is \(name). My agility level is \(agilityLevel!)")
        print(countDamage() ?? "")
    }
    
}

struct Rebecca: shooter {
    
    var name = "Rebecca"
    var health = 190
    var nameOfGun: String? = "Guts"
    var countOfAmmo = 8
    var strengthLevel = 17
    var damage: Int? = 300
    
    func startShooting() {
        guard nameOfGun != nil else { return print("I don't have any gun!")}
        
        print("I will shoot you!")
    }
    func reloadGun() {
        switch countOfAmmo {
        case 8: print("I have full magazine")
        case 4...7: print("I'm still can shoot")
        case 0...3: print("Reloading!")
        default: break
        }
    }
   mutating func useMedicKit() {
        
        if health == 200 {
            print("My health is full. I don't need to use a medickit")
        } else if health < 200 {
            print("I'm using a medickit my health is \(health)")
            self.health = self.health + 10
            print("I'm feeling better, my health now is: \(health)")
        }
    }
    
    func countDamage() -> String? {
        if let damage = damage {
            return ("Damage is: \(damage)")
        } else {
            return "No damage"
        }
    }
    
    func aboutMe() {
        print("Hi, my name is \(name). My strength level is \(strengthLevel)")
        print(countDamage() ?? "")
    }
}

struct NightCity {
    var sandevistanOwner: Sandevistan
    var cyberdeckOwner: Netrunner
    var gunOwner: shooter
    
    func welcomeInNightCity() {
        cyberdeckOwner.aboutMe()
        sandevistanOwner.aboutMe()
        gunOwner.aboutMe()
    }
    
    mutating func sandevistanFight(sandevistan: Sandevistan) {
        sandevistanOwner.activateSandevistan()
        sandevistanOwner.rechargeSandevistan()
        self.sandevistanOwner.useMedicKit()
    }
    
    mutating func netrunnerFight(cyberdeck: Netrunner) {
        cyberdeckOwner.hacking()
        cyberdeckOwner.useMedicKit()
        cyberdeckOwner.rechargeRAM()
    }
    
    mutating func shooterFight(shooter: shooter) {
      gunOwner.startShooting()
      gunOwner.reloadGun()
      gunOwner.useMedicKit()
    }
}
