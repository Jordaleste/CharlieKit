//
//  File.swift
//  
//
//  Created by Charles Eison on 3/28/20.
//

import Foundation

public extension Double {
    
    ///Rounds to a number of decimal places
    mutating func round(toDecimalPlaces decimalPlaces: Int) {
        let multiplier = pow(10, Double(decimalPlaces))
        
        self *= multiplier
        self += 0.5
        self = Double(Int(self))
        self /= multiplier
    }
    
    ///Returns the number, rounded to a number of decimal places
    func rounded(toDecimalPlaces decimalPlaces: Int) -> Double {
        var numberToRound = self
        numberToRound.round(toDecimalPlaces: decimalPlaces)
        return numberToRound
    }
}
