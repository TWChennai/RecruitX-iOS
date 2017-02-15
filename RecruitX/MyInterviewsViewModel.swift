//
//  MyInterviewsViewModel.swift
//  RecruitX
//
//  Created by Arun Sundaralingam on 15/02/17.
//  Copyright © 2017 Thoughtworks. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON
class MyInterviewsViewModel : InterviewsDelegate {
    internal func fetch(onLoad: @escaping ([MyInterviews]) -> ())  {
        Alamofire.request("https://recruitx-qa.herokuapp.com/interviews?panelist_login_name=pan&panelist_experience=99&panelist_role=Ops", headers: ["Authorization": "ask me"]).responseJSON { response in
            if let JSONText = response.result.value {
                print("JSON: \(JSONText)")
                let json = JSON(JSONText)
                if let firstName = json[0]["candidate"]["first_name"].string {
                    let myInterviews = [MyInterviews(firstName)]
                    onLoad(myInterviews)
                }
            }
        }
    }
}
protocol InterviewsDelegate {
    func fetch(onLoad: @escaping ([MyInterviews]) -> ())
}

