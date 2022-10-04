import Foundation

protocol method {
  func method1()
  func method2()
}

class TestMethod {
  @objc dynamic func method1() {
    print("Method 1")
  }
}

extension TestMethod: method {
  @objc dynamic func method2() {
    print("Method 2")
  }
}

extension TestMethod {
  static let swizzle: Void = {
    let instance: TestMethod = TestMethod()
    let aClass: AnyClass! = object_getClass(instance)
    let originalMethod = class_getInstanceMethod(aClass, #selector(TestMethod.method1))
    let swizzledMethod = class_getInstanceMethod(aClass, #selector(TestMethod.method2))
    if let originalMethod = originalMethod, let swizzledMethod = swizzledMethod {
      // switch implementation..
      print("Swizzle!!")
      method_exchangeImplementations(originalMethod, swizzledMethod)
    }
  }()
}

TestMethod.swizzle
TestMethod().method1() // Method 2
TestMethod().method2() // Method 1
