import XCTest
import Cuckoo
@testable import RecruitX




class MyInterviewsViewControllerTest: XCTestCase {
    
    var myInterviewsViewController: MyInterviewsViewController? = nil
    override func setUp() {
        super.setUp()
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        myInterviewsViewController = storyBoard.instantiateViewController(withIdentifier: "MyInterviewsTab") as? MyInterviewsViewController
    }

    
    func testVerifyNumberOfSections() {
        XCTAssertEqual(myInterviewsViewController?.numberOfSections(in: UITableView()), 1)
    }
    
    func testVerifyNumberOfRows() {
        XCTAssertEqual(myInterviewsViewController?.tableView(UITableView(),numberOfRowsInSection:5), 3)
    }
}
