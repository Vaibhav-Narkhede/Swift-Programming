guard true else {
	print("Condition not met")
}
print("Condition met")

/* Output
Condition met
*/

func someFunction() {

	guard false else {
		print("Condition not met")
		return
	}
	print("Condition met")
}

someFunction()
print("Hello after function call")

/* Output
Condition not met
Hello after function call
*/
