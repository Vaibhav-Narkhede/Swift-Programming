for index in 1..<5 {
    print(index)           // 1 2 3 4
}
print("---------------------")

for index in 1...5 {
    print(index)           // 1 2 3 4 5
}
print("---------------------")

for index in 1...5 {
    if(index == 3){
        print(index)
        break
    }else{
        print(index)
        continue
    }
}
print("---------------------")

let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    print("Hello, \(name)!")
}
