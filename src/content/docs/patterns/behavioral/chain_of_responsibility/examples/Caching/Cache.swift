// Cache protocol
protocol Cache {
    var nextCache: Cache? { get set }
    func getValue(key: String) -> Any?
    func setValue(key: String, value: Any)
}

// Concrete cache 1 - Memory cache
class MemoryCache: Cache {
    private var cacheData: [String: Any] = [:]
    var nextCache: Cache?
    
    func getValue(key: String) -> Any? {
        if let value = cacheData[key] {
            print("Retrieved value from Memory Cache for key: \(key)")
            return value
        } else if let nextCache = self.nextCache {
            return nextCache.getValue(key: key)
        } else {
            print("Value not found in any cache for key: \(key)")
            return nil
        }
    }
    
    func setValue(key: String, value: Any) {
        print("Stored value in Memory Cache for key: \(key)")
        cacheData[key] = value
    }
}

// Concrete cache 2 - Disk cache
class DiskCache: Cache {
    var nextCache: Cache?
    
    func getValue(key: String) -> Any? {
        print("Retrieved value from Disk Cache for key: \(key)")
        // Simulated logic to read from disk cache
        return nil
    }
    
    func setValue(key: String, value: Any) {
        print("Stored value in Disk Cache for key: \(key)")
        // Simulated logic to write to disk cache
    }
}

// Concrete cache 3 - Network cache
class NetworkCache: Cache {
    var nextCache: Cache?
    
    func getValue(key: String) -> Any? {
        print("Retrieved value from Network Cache for key: \(key)")
        // Simulated logic to fetch from network cache
        return nil
    }
    
    func setValue(key: String, value: Any) {
        print("Stored value in Network Cache for key: \(key)")
        // Simulated logic to store in network cache
    }
}

// Usage
let memoryCache = MemoryCache()
let diskCache = DiskCache()
let networkCache = NetworkCache()

memoryCache.nextCache = diskCache
diskCache.nextCache = networkCache

// Requesting a value
let key = "myKey"
var value = memoryCache.getValue(key: key)

if value == nil {
    // Value not found in any cache, perform expensive computation or fetch from a data source
    value = "Computed value or fetched data"

    // Storing the value in the cache
    memoryCache.setValue(key: key, value: value!)
}

print("Final value: \(value!)")
