//The strategy pattern is used to create an interchangeable family of algorithms from which the required process is chosen at run-time.
protocol PrintStrategy {
    func print(_ string: String) -> String
}

final class Printer {
    private let strategy: PrintStrategy
    
    func print(_ string: String) -> String {
        return self.strategy.print(string)
    }
    
    init(strategy: PrintStrategy) {
        self.strategy = strategy
    }
}

final class UpperCaseStrategy: PrintStrategy {
    func print(_ string: String) -> String {
        return string.uppercased()
    }
}

final class LowerCaseStrategy: PrintStrategy {
    func print(_ string: String) -> String {
        return string.lowercased()
    }
}

var lower = Printer(strategy: LowerCaseStrategy())
print(lower.print("Vaibhav Narkhede"))
var upper = Printer(strategy: UpperCaseStrategy())
print(upper.print("Vaibhav Narkhede"))
