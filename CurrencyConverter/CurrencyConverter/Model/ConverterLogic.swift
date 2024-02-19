//
//  ConverterLogic.swift
//  CurrencyConverter
//
//  Rachel Wesling
//  Mobile App1
//

import Foundation

struct ConverterLogic {
    var integerVal : Int = 0
    var currencyCADSwitch = true
    var currencyGBPSwitch = true
    var currencyEURSwitch = true
    var currencyAUSSwitch = true
    
    mutating func getUSDamount(_ USDamount: Int) -> Int {
        integerVal = Int()
        return integerVal
    }
    
    mutating func setCADSwitch(_ switchValue: Bool) {
        if switchValue {
            currencyCADSwitch = true
        } else {
            currencyCADSwitch = false
        }
    }
    mutating func setGBPswitch(_ switchValue: Bool) {
        if switchValue {
            currencyGBPSwitch = true
        } else {
            currencyGBPSwitch = false
        }
    }
    mutating func setEURswitch(_ switchValue: Bool) {
        if switchValue {
            currencyEURSwitch = true
        } else {
            currencyEURSwitch = false
        }
    }
    mutating func setAUSswitch(_ switchValue: Bool) {
        if switchValue {
            currencyAUSSwitch = true
        } else {
            currencyAUSSwitch = false
        }
    }
    
    mutating func convertAmount() -> String {
        let USDcurrency = Float(integerVal)//currencyUSDlabel.text!)
        var CADconversion : Float = 0
        var GBPconversion : Float = 0
        var EURconversion : Float = 0
        var AUSconversion : Float = 0
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        formatter.roundingMode = .halfUp
        
        if currencyCADSwitch {
            CADconversion = USDcurrency * 1.34//86
            //let formattedCADconversion = formatter.string(for: CADconversion)
            return String(CADconversion)
        }
        if currencyGBPSwitch {
            GBPconversion = USDcurrency * 0.79//3865
            //print("£" +
            return String(GBPconversion)
        }
        
        if currencyEURSwitch {
            EURconversion = USDcurrency * 0.92//8279
            //print("€" +
            return String(EURconversion)
        }
        
        if currencyAUSSwitch {
            AUSconversion = USDcurrency * 1.53//147
            //print("$" +
            return String(AUSconversion)
        }
        
        return convertAmount()
    }
}
