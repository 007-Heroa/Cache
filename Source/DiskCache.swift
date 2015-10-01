import Foundation

public class DiskCacheM: CacheAware {

  public let prefix = "no.hyper.Cache.Disk"
  public let path: String
  public var maxSize: UInt = 0

  private var fileManager: NSFileManager!

  public required init(name: String) {
    let paths = NSSearchPathForDirectoriesInDomains(.CachesDirectory,
      NSSearchPathDomainMask.UserDomainMask, true)
    path = "\(paths.first!)/\(prefix)\(name)"
  }

  // MARK: - CacheAware

  public func add<T: Cachable>(key: String, object: T) {
  }

  public func object<T: Cachable>(key: String) -> T? {
    return nil
  }

  public func remove(key: String) {
  }

  public func clear() {
  }
}
