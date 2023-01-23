
import Foundation

public final class UserDefaultsStandard {
    
    static public let shared = UserDefaultsStandard()
    
    private let standard = UserDefaults.standard
    
    public func save<T>(key: StoreProjectKey.Key, value: T) {
        standard.set(value, forKey: key.rawValue)
    }
    
    public func get<T>(key: StoreProjectKey.Key) -> T? {
        let value = standard.object(forKey: key.rawValue) as? T
        return value
    }
    
    public func save<T>(key: String, value: T) {
        standard.set(value, forKey: key)
    }
    
    public func get<T>(key: String) -> T? {
        let value = standard.object(forKey: key) as? T
        return value
    }
}

public class StoreProjectKey {
    
    public enum Keys {
        case nul
    }
    
    public enum Key: String {
        case nul
        case token
        case isRegistration
        case userID
        case isMute
        case score
        case isMusic
    }
}
