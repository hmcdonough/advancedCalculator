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
func calculate(op : (Double, Double) -> Double, first:Int, second:Int) -> Double {
    return op(Double(first), Double(second));
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
func arrayAdd(values:[Int]) -> Int {
    var total : Int = 0;
    for val in values {
        total += val
    }
    return total;
}

//arrayMul
func arrayMul(values:[Int]) -> Int {
    var total : Int = 1;
    for val in values {
        total *= val
    }
    return total;
}

//arrayCount
func arrayCount(values:[Int]) -> Int {
    return values.count
}

//arrayAvg
func arrayAvg(values:[Int]) -> Int {
    var total : Int = 0;
    for val in values {
        total += val
    }
    return total / values.count;
}

//arrayGeneric
func arrayCalc(op : ([Int]) -> Int, arr:[Int]) -> Int {
    return op(arr);
}

//Tests
print("Testing arrayAdd")
print(arrayCalc(arrayAdd, arr: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]))

print("Testing arrayMul")
print(arrayCalc(arrayMul, arr: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]))

print("Testing arrayCount")
print(arrayCalc(arrayCount, arr: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]))

print("Testing arrayAvg")
print(arrayCalc(arrayAvg, arr: [1, 2, 3, 4, 5, 6, 7, 8, 9]))


//------------------------

//tupleAdd
func tupleAdd(firstTuple: (first: Double?, second: Double?), secondTuple: (first: Double?, second: Double?)) -> (Double, Double) {
    var result = (0.0, 0.0)
    
    if firstTuple.first != nil {
        result.0 += firstTuple.first!
    }
    
    if secondTuple.first != nil {
        result.0 += secondTuple.first!
    }
    
    if firstTuple.second != nil {
        result.1 += firstTuple.second!
    }
    
    if secondTuple.second != nil {
        result.1 += secondTuple.second!
    }
    
    return result
}

//tupleSubtract
func tupleSub(firstTuple: (first: Double?, second: Double?), secondTuple: (first: Double?, second: Double?)) -> (Double, Double) {
    var result = (0.0, 0.0)
    
    if firstTuple.first != nil {
        result.0 = firstTuple.first!
    }
    
    if secondTuple.first != nil {
        result.0 -= secondTuple.first!
    }
    
    if firstTuple.second != nil {
        result.1 = firstTuple.second!
    }
    
    if secondTuple.second != nil {
        result.1 -= secondTuple.second!
    }
    
    return result
}

//Tests
print("Testing tupleAdd")
print(tupleAdd((1, 7), secondTuple: (5, 3)))
print(tupleAdd((8, nil), secondTuple: (nil, 3)))

print("Testing tupleSub")
print(tupleSub((1, 7), secondTuple: (5, 3)))
print(tupleSub((8, nil), secondTuple: (nil, 3)))

