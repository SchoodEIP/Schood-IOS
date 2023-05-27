//
//  NumberInfoParser.swift
//  Schood
//
//  Created by Matéo Deroche on 24/05/2023.
//

import Foundation

struct NumberList: Codable {
    var name: String
    var description: String
    var phoneNumber: String
    var category: String
    
    static let allNumber: [NumberList] = Bundle.main.decode(file: "HelpNumbersOld.json")
    static let sampleNumber: NumberList = allNumber[0]
    

    enum CodingKeys: String, CodingKey {
        case category = "category"
        case name = "name"
        case description = "description"
        case phoneNumber = "phone_number"
    }
//    enum CodingKeys: String, CodingKey {
//        case category = "category"
//        case content = "content"
//    }
}

//struct Content: Codable {
//    var name: String
//    var description: String
//    var phoneNumber: String
//
//    static let allContent: [Content] = Bundle.main.decode(file: "HelpNumbersOld.json")
//    static let sampleContent: Content = allContent[0]
//
//    enum CodingKeys: String, CodingKey {
//        case name = "name"
//        case description = "description"
//        case phoneNumber = "phone_number"
//    }
//}

extension Bundle {
    func decode<T: Decodable>(file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Could not find \(file) in bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Could not load \(file) from bundle.")
        }
        
        let decoder = JSONDecoder()
        
        guard let loadedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Could not decode \(file) from bundle.")
        }
        
        return loadedData
    }
}
