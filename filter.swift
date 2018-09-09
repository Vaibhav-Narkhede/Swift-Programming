

func myFilter<T>(array: [T], operation: (T) -> Bool) -> [T] {
  var result: [T] = []
  for element in array {
    if operation(element) {
      result.append(element)
    }
  }
  return result
}

let gradesA = myFilter(array: Array(1...100), operation: { $0 >= 93 && $0 <= 100 })
print(gradesA)

//The built-in filter may look something like this. Since you have not taken generics protocols in the following chapter and Advanced Swift, you may be confused with Element. It's the type of an array for now.

extension Array {
  func myFilter(_ logic: (Element) -> Bool) -> [Element] {
    var result: [Element] = []
    for item in self {
      if logic(item) {
        result.append(item)
      }
    }
    return result
  }
}

let result = Array(1...50).myFilter { $0 % 2 == 0 }
