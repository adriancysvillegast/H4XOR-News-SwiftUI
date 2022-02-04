//
//  PostData.swift
//  H4XOR News
//
//  Created by Adriancys Jesus Villegas Toro on 30/12/21.
//

import Foundation

struct Results : Decodable{
    let hits : [Posts]
}
struct Posts: Decodable, Identifiable {
    var id : String {
        return objectID
    }
    let title : String
//    En algunos caso se obtiene un url nil por lo tanto se coloco la url optional
    let url : String?
    let points : Int
    let objectID : String
}
