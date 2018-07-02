//
//  Food.swift
//  00457141final
//
//  Created by User09 on 2018/6/13.
//  Copyright © 2018年 User09. All rights reserved.
//

import Foundation

struct Food : Codable{
    var name:String
    var address: String
    var phone: String
    var foodie: String
    
    static func readFoodsFromFile() -> [Food]? {
        let propertyDecoder = PropertyListDecoder()
        if let data = UserDefaults.standard.data(forKey: "foods"), let foods = try? propertyDecoder.decode([Food].self, from: data) {
            return foods
        } else {
            return nil
        }
    }
    
    static func saveToFile(foods: [Food]) {
        let propertyEncoder = PropertyListEncoder()
        if let data = try? propertyEncoder.encode(foods) {
            UserDefaults.standard.set(data, forKey: "foods")
        }
    }
}
