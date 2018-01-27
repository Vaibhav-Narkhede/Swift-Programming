/*
func swapInts(_ a: inout Int, _ b: inout Int){
    var temp = a
    a = b
    b = temp
}
*/

func swapValues<T>(_ a: inout T, _ b: inout T){
    var temp = a
    a = b
    b = temp
}

var x = 10
var y = 20
print("Before Swipe x = \(x) y = \(y)")
swapValues(&x, &y)
print("After Swipe x = \(x) y = \(y)")
