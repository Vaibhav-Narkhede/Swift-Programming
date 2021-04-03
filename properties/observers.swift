print("-----Property Observer-----")
struct Person {
    var clothes: String {
        willSet {
            updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
        }

        didSet {
            updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
        }
    }
}

func updateUI(msg: String) {
    print(msg)
}

var p1 = Person(clothes: "T-shirt")
p1.clothes = "Shirt"

class Student{
    var firstName: String{
        didSet{
            print("Firstname is \(firstName)")
        }
        willSet{
            print("will set")
        }
    }
    
    init(name: String) {
        firstName = name
    }
}

var s1 = Student(name: "allan")
s1.firstName = "arya"
print(s1)
