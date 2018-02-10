// MARK: - Singleton

final class Singleton {
    // Can't init is singleton 
    //This prevents others from using the default '()' initializer for this class.
    private init() { }

    // MARK: Shared Instance
    static let sharedInstance = Singleton()
}
