//
//  main.swift
//  advancedCalculator
//
//  Created by Harry McDonough on 10/12/15.
//  Copyright © 2015 Harrison McDonough. All rights reserved.
//

import Foundation

func add(first:Double, second:Double) -> Double {
    return first + second;
}

func sub(first:Double, second:Double) -> Double {
    return first - second;
}

func mul(first:Double, second:Double) -> Double {
    return first * second;
}

func div(first:Double, second:Double) -> Double {
    return first / second;
}

func calculate(op : (Double, Double) -> Double, first:Int, second:Int) -> Double {
    return op(Double(first), Double(second));
}

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

func arrayAdd(values:[Int]) -> Int {
    var total : Int = 0;
    for val in values {
        total += val
    }
    return total;
}

func arrayMul(values:[Int]) -> Int {
    var total : Int = 1;
    for val in values {
        total *= val
    }
    return total;
}

func arrayCount(values:[Int]) -> Int {
    return values.count
}

func arrayAvg(values:[Int]) -> Int {
    var total : Int = 0;
    for val in values {
        total += val
    }
    return total / values.count;
}

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

func pointAdd(one: [String: Double?]?, two: [String: Double?]?) -> [String: Double] {
    var result = Dictionary<String, Double>()
    
    if one != nil {
        for (str, num) in one! {
            result[str] = 0
            if num != nil {
                result[str]! += num!
            }
        }
    }
    
    if two != nil {
        for (str, num) in two! {
            if result[str] == nil {
                result[str] = 0
            }
            if num != nil {
                result[str]! += num!
            }
        }
    }

    return result
}

print("pointAdd Tests")
print(pointAdd(["x" : 1, "y": 2, "z": 3], two: ["x": 4, "y": 5, "z": 6]))
print(pointAdd(["x" : 1, "y": nil, "z": 3], two: ["x": 4, "y": 5, "z": nil]))
print(pointAdd(["x" : 1, "z": 3], two: ["x": 4, "y": 5]))
print(pointAdd(["x" : 1, "z": 3], two: nil))

func pointSub(one: [String: Double?]?, two: [String: Double?]?) -> [String: Double] {
    var result = Dictionary<String, Double>()
    
    if one != nil {
        for (str, num) in one! {
            result[str] = 0
            if num != nil {
                result[str]! += num!
            }
        }
    }

    if two != nil {
        for (str, num) in two! {
            if result[str] == nil {
                result[str] = 0
            }
            if num != nil {
                result[str]! -= num!
            }
        }
    }
    
    return result
}

print("pointAdd Tests")
print(pointSub(["x" : 1, "y": 2, "z": 3], two: ["x": 4, "y": 5, "z": 6]))
print(pointSub(["x" : 1, "y": nil, "z": 3], two: ["x": 4, "y": 5, "z": nil]))
print(pointSub(["x" : 1, "z": 3], two: ["x": 4, "y": 5]))
print(pointSub(["x" : 1, "z": 3], two: nil))
