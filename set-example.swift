let evens: Set = [10,12,14,16,18]
let odds: Set = [5,7,9,11,13]
let primes = [2,3,5,7]

print(odds.union(evens).sorted())
// [5,7,9,10,11,12,13,14,16,18]

print(odds.intersection(evens).sorted())
//[]

print(odds.subtracting(primes).sorted())
//[9, 11, 13]
