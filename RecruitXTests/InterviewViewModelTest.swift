import Foundation
import Quick
import Nimble
import OHHTTPStubs

@testable import RecruitX

class InterviewSpec: QuickSpec {
    override func spec() {

        describe("In interview model") {
            context("GetForAll") {
                it("should return all interviews for that user") {
                    let stubbedInterviews = "Interview 1"
                    stub(condition: isHost("mywebservice.com")) { _ in
                        let interview = [stubbedInterviews]
                        let stubData: Data = NSKeyedArchiver.archivedData(withRootObject: interview) as Data
                        return OHHTTPStubsResponse(data: stubData, statusCode: 200, headers: nil)
                    }

//                    expect(Interview.getForAll(user: "user")).to(contain(stubbedInterviews))
                }
            }
        }

    }
}
