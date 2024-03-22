//
//  LocationModel.swift
//  Africa
//
//  Created by Shazeen Thowfeek on 20/03/2024.
//

import Foundation
import MapKit

struct NationalParkLocation:Codable,Identifiable{
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude: Double
    
    //computed property
    var location: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    
}
