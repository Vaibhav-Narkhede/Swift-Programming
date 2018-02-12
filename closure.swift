var sayHello = { (name: String) -> String in
    return "Hello \(name)"
}

print(sayHello("Vaibhav"))

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

//normal function
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reversedNames = names.sorted(by: backward)
print(reversedNames)

//Closure Expression Syntax
reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
        return s1 > s2
    })
print(reversedNames)

reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2 } )
print(reversedNames)

//Inferring Type From Context
reversedNames = names.sorted(by: { s1, s2 in return s1 > s2 } )
print(reversedNames)

//Implicit Returns from Single-Expression Closures
reversedNames = names.sorted(by: { s1, s2 in s1 > s2 } )
print(reversedNames)

//Shorthand Argument Names
reversedNames = names.sorted(by: { $0 > $1 } )
print(reversedNames)

//Operator Methods
reversedNames = names.sorted(by: >)
print(reversedNames)
