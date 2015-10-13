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

//add
func add(first:Double, second:Double) -> Double {
    return first + second;
}

//subtract
func sub(first:Double, second:Double) -> Double {
    return first - second;
}

//multiply
func mul(first:Double, second:Double) -> Double {
    return first * second;
}

//divide
func div(first:Double, second:Double) -> Double {
    return first / second;
}

//Generic(function, int1, int2)
func calculate(op : (Double, Double) -> Double, first:Double, second:Double) -> Double {
    return op(first, second);
}


//let firstInput = input()
//var numbers = firstInput.componentsSeparatedByString(" ")
//let calc = input()
//let secondInput = input()
//let result = calculate(calc, first: convert(firstInput), second: convert(secondInput))
//print("Result: \(result)");

//Tests
print("Testing add")
print(calculate(add, first: 9, second: 7))
print(calculate(add, first: -5, second: 12))
print(calculate(add, first: -9375, second: 1275))

print("Testing sub")
print(calculate(sub, first: 4, second: 10))
print(calculate(sub, first: -9, second: 36))
print(calculate(sub, first: 4211, second: -301))

print("Testing mul")
print(calculate(mul, first: 9, second: 3))
print(calculate(mul, first: -5, second: -7))
print(calculate(mul, first: -1252, second: 593))

print("Testing div")
print(calculate(div, first: 25, second: 5))
print(calculate(div, first: -25, second: 4))
print(calculate(div, first: -4729, second: -102))


//------------------------

//arrayAdd

//arrayMul

//arrayCount

//arrayAvg

//arrayGeneric

//------------------------

//tupleAdd

//tupleSubtract

