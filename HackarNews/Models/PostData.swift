//
//  PostData.swift
//  HackarNews
//
//  Created by Maliha on 20/12/23.
//

import Foundation

struct Results: Decodable{
    let hits: [Post]
}

struct Post: Decodable, Identifiable{
    
    var id: String{
        return objectID
    }
    let title: String
    let objectID: String
    let points: Int
    let url: String?
}


