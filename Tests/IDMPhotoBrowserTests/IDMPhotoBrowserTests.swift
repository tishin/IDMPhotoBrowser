import XCTest
import IDMPhotoBrowser

final class IDMPhotoBrowserTests: XCTestCase {
    
    func testImport() {
        let browser = IDMPhotoBrowser()
        XCTAssertEqual(browser.animationDuration, 0.28)
        
    }
    
}
