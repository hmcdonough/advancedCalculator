//
//  main.swift
//  advancedCalculator
//
//  Created by Harry McDonough on 10/12/15.
//  Copyright © 2015 Harrison McDonough. All rights reserved.
//

import Foundation

print("Hello, World!")

func input() -> String {
    let keyboard = NSFileHandle.fileHandleWithStandardInput()
    let inputData = keyboard.availableData
    let result = NSString(data: inputData, encoding:NSUTF8StringEncoding) as! String
    return result.stringByTrimmingCharactersInSet(NSCharacterSet.newlineCharacterSet())
}

func convert(incoming:String) -> Double {
    if incoming.rangeOfString("-") != nil {
        return NSNumberFormatter().numberFromString(incoming)!.doubleValue
    }
    return NSNumberFormatter().numberFromString(incoming)!.doubleValue
}

let firstInput = input()
var numbers = firstInput.componentsSeparatedByString(" ")

let calc = input()
//add


//subtract

//multiply

//divide

//Generic(function, int1, int2)

//------------------------

//arrayAdd

//arrayMul

//arrayCount

//arrayAvg

//arrayGeneric

//------------------------

//tupleAdd

//tupleSubtract

