//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print("Hello World")

var playersCurrentlyOnline = 3
var age = 29
var weight = 135.4

let PI = 3.141592654
let stateOfBirth = "New York"
let yearsMilesDavisWasBorn = 1926

var milesRunToday: Double = 3

print(1)
print(2)
print("FizzBuzz")

var F = "Fizz"
var B = "Buzz"
print("\(F)\(B)")
print("My name is \(F)")


var one = 10
print(one)

for counter in 1...10 {
    print(counter)
}

for counter in 1...100 {
    if (counter % 3 == 0 && counter % 5 == 0) {
        print("FizzBuzz")
    }
    else if(counter % 5 == 0) {
        print("Buzz")
    }
    else if (counter % 3 == 0) {
        print("Fizz")
    }
    else {
        print(counter)
    }
}

//                          passing a value to the function; variable passed is a parameter
func fun1(a:Int) {
    if (a % 6 == 0) {
        print("div by 6")
    }
    else {
        print(a)
    }
}

for b in 1...10 {
    fun1(a:b)
}

//                                  returning a value from a function
func fun2(c:Int) -> String {
    var valueToReturn = ""
    
    if (c % 3 == 0) {
        valueToReturn = "div by 3"
    }
    else {
        valueToReturn = String(c)
    }
    return valueToReturn
}

for d in 1...10 {
    print(fun2(c:d))
}

// country growth
var initialPopulation:Double = 100000
var growthRate = 0.007

func popGrowth(pi:Double,rate:Double,yrs:Int)->Double {
    let pop:Double = pi * pow((1 + rate),Double(yrs))
    return pop
}

for years in 0...100 {
    print(popGrowth(pi: initialPopulation, rate: growthRate, yrs: years))
    popGrowth(pi: initialPopulation, rate: growthRate, yrs: years)
}


//                                      Arrays
var numbers = [1,2,3,4]
var letters = ["A","B","C"]

numbers[0]
numbers[1]

var groceryList = ["eggs","milk"]
groceryList.append("cheese")
groceryList += ["crackers"]

print(groceryList)

groceryList.remove(at: 1) //            index starts at 0
print(groceryList)

groceryList.count //                    count starts at 1

var countItems = groceryList.count
groceryList[countItems-1]  //           item #3, index #2
groceryList[groceryList.count-1]


var blankArray = [String]()
blankArray.count
if (!blankArray.isEmpty) { //           exclamation point flips the true/false
    blankArray[blankArray.count-1]
}
blankArray.last     //             
groceryList.last
groceryList.last!   //                  exclamation point at the end; must have a value

//                                      Switches
var classmateName = "Bob"

switch classmateName {
    case "Liz","Bhaumik", "Sam", "Tatiana", "Nora", "Saul":
        print("\(classmateName) is at WyoTech")
    case "Thomas", "Laura", "Grae":
        print("\(classmateName) is at Casper College")
    case "Ben":
        print("\(classmateName) is at Harvard")
default:
    print("\(classmateName)? Who is \(classmateName)?")
}
