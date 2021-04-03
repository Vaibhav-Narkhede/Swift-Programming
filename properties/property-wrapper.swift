//A property wrapper adds a layer of separation between code that manages how a property is stored and the code that defines a property.

print("-----Property Wrappers-----")

@propertyWrapper struct Capitalized {
    var wrappedValue: String {
        didSet { wrappedValue = wrappedValue.capitalized}
    }

    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue.capitalized
    }
}

struct User {
    @Capitalized var firstName: String
    @Capitalized var lastName: String
}

// Arya Mayer
var user = User(firstName: "arya", lastName: "mayer")
print(user.firstName, user.lastName)
// Arya Bob
user.lastName = "bob"
print(user.firstName, user.lastName)
