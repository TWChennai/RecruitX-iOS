import XCTest
@testable import RecruitX

class InterviewViewControllerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testReturnNumberOfRows() {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let vc: InterviewViewController = storyboard.instantiateViewController(withIdentifier: "InterviewTab") as! InterviewViewController
        
        XCTAssertEqual(vc.tableView(UITableView(),numberOfRowsInSection: 5), 5, "No of rows not matched")
    }

}
