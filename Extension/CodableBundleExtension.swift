//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Shazeen Thowfeek on 19/03/2024.
//

import Foundation

extension Bundle {
    
    func decode<T: Codable>(_ file: String)-> T {
        //1.locate the json file
        guard let url = self.url(forResource: file, withExtension: nil)else{
            fatalError("Failed to locate \(file) in bundle")
        }
        //2.create a property for data
        guard let data = try? Data(contentsOf: url) else{
            fatalError("Failed to load \(file) from bundle")
        }
        //3.create decoder
        let decoder = JSONDecoder()
        //4.create a property for decoded data
        guard let loaded = try? decoder.decode(T.self, from: data)else{
            fatalError("Failed to load \(file) from bundle")
        }
        //5.return the ready to use data
        return loaded
    }
}
