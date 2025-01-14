//
//  User.swift
//  LMessenger
//
//  Created by 김동현 on 1/13/25.
//

import Foundation

struct User {
    var id: String
    var name: String
    var phoneNumber: String?
    var profileURL: String?
    var description: String?
}
 
extension User {
    static var stub1: User {
        .init(id: "user1_id", name: "인덱스")
    }
    
    static var stub2: User {
        .init(id: "user2_id", name: "홍길동")
    }
}
