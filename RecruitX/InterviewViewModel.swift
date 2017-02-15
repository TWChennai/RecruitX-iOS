//
//  InterviewViewModel.swift
//  RecruitX
//
//  Created by Venkateswari Srinivasan on 15/02/17.
//  Copyright © 2017 Thoughtworks. All rights reserved.
//

import Foundation
import Alamofire

class InterviewViewModel {

    static func getForAllInteveiws(user: String, onLoadedAllInterviews: @escaping ([Interview]) -> ()) {
        
        Alamofire
            .request("http://mywebservice.com")
            .responseJSON { response in
                print(response.request!)  // original URL request
                print(response.response!) // HTTP URL response
                print(response.data!)     // server data
                print(response.result)   // result of response serialization
                let interview = Interview(response.result.description);
                onLoadedAllInterviews([interview])
        }
    }
}
