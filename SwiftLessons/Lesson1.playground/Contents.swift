//import UIKit
//Lesson 1 - SwiftUI functions

let greeting = "Hey YOU!"

//1st ver - the underline means that when you call your parameter, you do NOT say its parameter name 'a' or 'b' at all.
func printMe(_ a: Int, _ b: String = "Chris") -> String {
    return greeting + " " + (String(a)) + " " + b
}

//2nd ver - when calling this function, you MUST enter your parameters in the format (a: myAParam, b: myBParam)
func printMe(a: Int, b: String = "Chris") -> String {
    return greeting + "    " + (String(a)) + " " + b
}

//this calls my first version of printMe func
print(printMe(5, "Cindy"))
print(printMe(5))

//ver 0 - this function only takes one element...
func myFunc(a:Int) -> Int {
    let b = 20
    return a+b
}

let mySum = myFunc(a: 5)
print(mySum)

//ver 0.1 - this function returns Void
func myFunc2() -> Void {
}

//3rd ver: requires entering the params with the nickname age: 5, firstName: "Cindy", but within the body of my func, i can cleanly refer to them 'a' and 'b'

func printMe(age a: Int, firstName b: String = "Chris") -> String {

    return greeting + " " + (String(a)) + " " + b
}

//calls the 3rd version
print(printMe(age: 10, firstName: "Sally"))

//calls the 2nd version of my func
print(printMe(a: 5, b: "Cindy"))
print(printMe(a: 5))
