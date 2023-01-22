//
//  LocationModel.swift
//  Europa
//
//  Created by Mehmet Seyhan on 21/01/2023.
//

import Foundation
import MapKit

struct FamousPeopleLocation: Codable, Identifiable{
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude: Double
    
    //Computed Property
    var location: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
