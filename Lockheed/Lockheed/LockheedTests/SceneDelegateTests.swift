



import XCTest
import EssentialFeediOS
@testable import Lockheed

class SceneDelegateTests: XCTestCase {
    
    func test_sceneWillConnectToSession_configuresRootViewController() {
        
        let sut = SceneDelegate()
        sut.window = UIWindow()
     
        sut.configureWindow()
        
        let root = sut.window?.rootViewController
        let rootNavigation = root as? UINavigationController
        let topController = rootNavigation?.topViewController
        
        XCTAssertNotNil(rootNavigation, "Expected a navigation controller as a root , got \(String(describing: root)) instead")
        XCTAssertTrue(topController is FeedViewController)
    }
}
