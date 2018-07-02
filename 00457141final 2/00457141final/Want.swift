//
//  Want.swift
//  00457141final
//
//  Created by User15 on 2018/6/27.
//  Copyright © 2018年 User09. All rights reserved.
//

import Foundation

import Foundation
import UIKit

struct Want: Codable {
    var name:String
    var phone: String
    var imageName: String?
    
    static let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    
    static func saveToFile(wants: [Want]) {
        let propertyEncoder = PropertyListEncoder()
        if let data = try? propertyEncoder.encode(wants) {
            let url = Want.documentsDirectory.appendingPathComponent("want")
            try? data.write(to: url)
        }
    }
    
    static func readInfosFromFile() -> [Want]? {
        let propertyDecoder = PropertyListDecoder()
        let url = Want.documentsDirectory.appendingPathComponent("want")
        if let data = try? Data(contentsOf: url), let wants = try? propertyDecoder.decode([Want].self, from: data) {
            return wants
        } else {
            return nil
        }
    }
    
    var image: UIImage? {
        if let imageName = imageName {
            let url = Want.documentsDirectory.appendingPathComponent(imageName)
            return UIImage(contentsOfFile: url.path)
        } else {
            return #imageLiteral(resourceName: "head")
            
        }
    }

}
