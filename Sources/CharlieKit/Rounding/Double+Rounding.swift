//
//  Double+Rounding.swift
//  
//
//  Created by Charles Eison on 3/28/20.
//

import Foundation

public extension Double {
    
    /**
     Rounds this value to a certain number of decimal places
     - parameters:
        - to: Number of decimal places to round this value to
     */
    mutating func round(to decimalPlaces: Int) {
        let multiplier = pow(10, Double(decimalPlaces))
        
        self *= multiplier
        self += 0.5
        self = Double(Int(self))
        self /= multiplier
    }
    
    /**
     Returns this value after rounding it to a certain number of decimal places
     - parameters:
        - to: Number of decimal places to round this value to
     - returns: The rounded value
     */
    func rounded(to decimalPlaces: Int) -> Double {
        var numberToRound = self
        numberToRound.round(to: decimalPlaces)
        return numberToRound
    }
}
