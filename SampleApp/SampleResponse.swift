//
//  SampleResponse.swift
//  SampleApp
//
//  Created by MacBook on 22/05/19.
//  Copyright © 2019 John Raja. All rights reserved.
//

import Foundation

struct SampleResponse { }

/**
 {
 userId: 1,
 id: 1,
 title: "delectus aut autem",
 completed: false
 }
 */
extension SampleResponse {
    struct todos: Codable {
        let userId:Int
        let id:Int
        let title: String?
        let completed:Bool?
        
        let testTrash:String?
    }
}

struct SampleStructData02: Decodable {
    let msg: String
    let news_list: SampleStructData02SubData
    
    struct SampleStructData02SubData: Codable {
        let category : String
        let article_list : SampleStructData03SubData
        
        struct SampleStructData03SubData: Codable {
            let post_id : Int
            let post_title : String
            let post_image : String
        }
    }
}

struct SampleStructData04 : Decodable {
    let userId: Int
    //let id:Int
    let title: String?
    //let completed:Bool?
    
}
