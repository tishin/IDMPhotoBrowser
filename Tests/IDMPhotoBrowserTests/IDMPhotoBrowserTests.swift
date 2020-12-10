import XCTest
@testable import IDMPhotoBrowser

final class IDMPhotoBrowserTests: XCTestCase {
    
    func testImport() {
        let image = IDMPhoto(image: UIImage())!
        let browser = IDMPhotoBrowser(photos: [image, image, image])!
        XCTAssertEqual(browser.animationDuration, 0.28)
        
        browser.displayToolbar = true
        browser.displayArrowButton = true
        browser.displayCounterLabel = false
        browser.displayActionButton = false
        browser.viewDidLoad()
        browser.viewWillAppear(false)
        
        let toolbar = browser.view.subviews.compactMap({ $0 as? UIToolbar }).first
        XCTAssertEqual(toolbar?.items?.count, 5)
        
        let buttons = toolbar?.items?.compactMap({ $0.customView as? UIButton })
        XCTAssertEqual(buttons?.count, 2)
        XCTAssertEqual(buttons?.first?.image(for: .normal)?.size, CGSize(width: 14, height: 17))
        XCTAssertEqual(buttons?.first?.image(for: .selected)?.size, CGSize(width: 14, height: 17))
        XCTAssertEqual(buttons?.last?.image(for: .normal)?.size, CGSize(width: 14, height: 17))
        XCTAssertEqual(buttons?.last?.image(for: .selected)?.size, CGSize(width: 14, height: 17))
        
    }
    
}
