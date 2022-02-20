import UIKit


func Fahrenheit(celsius: Double) -> Double {
    return celsius * (9.0 / 5.0) + 32
}

func Celsius(fahrenheit: Double) -> Double {
    return (5.0 / 9.0) * (fahrenheit - 32)
}


let c = Fahrenheit(celsius: 100)

let f = Celsius(fahrenheit: 100)

class Baby {
    var name: String = ""
    var age: Int = 1
}

var cuteBaby = Baby()
cuteBaby.name = "swift"
cuteBaby.age = 3

