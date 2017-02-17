import Foundation
import Alamofire
import SwiftyJSON

class InterviewViewModel {

    static func getForAllInteveiws(user: String, onLoadedAllInterviews: @escaping ([Interview]) -> ()) {
        
        print("in getForAllInteveiws")
        
//        let authorizationCode = ProcessInfo.processInfo.environment["AuthorizationCode"]
        let headers: HTTPHeaders = [
            "Authorization" : "authorizationCode"
        ]
        
        Alamofire
            .request("https://recruitx-qa.herokuapp.com/interviews?panelist_login_name=pan&panelist_experience=9&panelist_role=Dev", headers: headers)
            .responseJSON { response in
                let result = response.result.value;
            
                let jsonResult = JSON(array: result!)
                
                if let firstName = jsonResult[0]["candidate"]["first_name"].string {
                    onLoadedAllInterviews([Interview(firstName)])
                }
        }
    }
}
