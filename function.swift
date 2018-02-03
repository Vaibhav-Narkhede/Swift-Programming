
//Defining and Calling Functions
func greet(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}

print(greet(person: "Vaibhav"))

func greetAgain(person: String) -> String {
    return "Hello again, " + person + "!"
}

print(greetAgain(person: "Vaibhav"))

//Function Without Parameters and Return Values
func sayHelloWorld() -> String {
    return "hello, world"
}
print(sayHelloWorld())

//Functions With Multiple Parameters
func greet(person: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return greetAgain(person: person)
    } else {
        return greet(person: person)
    }
}
print(greet(person: "Vaibhav", alreadyGreeted: true))
