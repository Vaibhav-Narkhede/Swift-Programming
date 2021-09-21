import UIKit

print("Opaque Type")

protocol Product{
    associatedtype Code
    var productCode: Code {get}
    func description() -> String
}


struct Laptop: Product{
    typealias Code = String
    var productCode: String
    
    func description() -> String{
        return "Laptop description"
    }
}

struct Keyboard: Product{
    typealias Code = Int
    var productCode: Int
    
    func description() -> String {
        return "Keyboard description"
    }
}

struct Factory{
    func makeProduct() -> some Product{
        return Laptop(productCode: "L-1")
    }
}

let l1 = Factory().makeProduct()
l1.description()


protocol Vehicle{
    func description() -> String
}

struct Car: Vehicle{
    func description() -> String {
        return "Car description"
    }
}

struct Bike: Vehicle{
    func description() -> String {
        return "Bike description"
    }
}

enum VehicleType{
    case car, bike
}

struct VehicleFactory{
    func makeVehicle(_ type: VehicleType) -> Vehicle{
        switch type {
        case .car:
            return Car()
        default:
            return Bike()
        }
    }
}

let vf = VehicleFactory()

let car = vf.makeVehicle(.car)
car.description()

let bike = vf.makeVehicle(.bike)
bike.description()



protocol Shape {
    func describe() -> String
}

struct Square: Shape {
    func describe() -> String {
        return "I'm a square. My four sides have the same lengths."
    }
}

struct Circle: Shape {
    func describe() -> String {
        return "I'm a circle. I look like a perfectly round apple pie."
    }
}

func makeShape() -> Shape {
    return Circle()
}
let shape = makeShape()
print(shape.describe())


func callAPI(name: String, callback: (Bool)->Void){
    print(name)
    sleep(1)
    callback(true)
}

callAPI(name: "Hello"){ status in
    print(status)
}
