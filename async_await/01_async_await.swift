import Foundation

struct UserData {
    let name: String
    let friends: [String]
    let highScores: [Int]
}

func getUser() async -> String {
    sleep(1)
    return "Sam"
}

func getHighScores() async -> [Int] {
    sleep(1)
    return [10, 20, 30, 40, 50, 60]
}

func getFriends() async -> [String] {
    sleep(1)
    return ["Alan", "Elon", "Robot"]
}

func printUserDetailsSerially() async {
    print(#function)
    let username = await getUser()
    let scores = await getHighScores()
    let friends = await getFriends()

    let user = UserData(name: username, friends: friends, highScores: scores)
    print("Hello, my name is \(user.name), and I have \(user.friends.count) friends!")
}

func printUserDetailsConcurrenty() async {
    print(#function)
    async let username = getUser()
    async let scores = getHighScores()
    async let friends = getFriends()

    let user = await UserData(name: username, friends: friends, highScores: scores)
    print("Hello, my name is \(user.name), and I have \(user.friends.count) friends!")
}

let clock = ContinuousClock()

let serailExecutionTime  = await clock.measure {
    await printUserDetailsSerially()
}
print(serailExecutionTime)

let concurrentExecutionTime = await clock.measure {
await printUserDetailsConcurrenty()
}
print(concurrentExecutionTime)

//await printUserDetailsSerially()
//await printUserDetailsConcurrenty()

/* output
printUserDetailsSerially()
Hello, my name is Sam, and I have 3 friends!
3.007828155 seconds
printUserDetailsConcurrenty()
Hello, my name is Sam, and I have 3 friends!
1.000527633 seconds
*/
