//
//  MapView.swift
//  Europa
//
//  Created by Mehmet Seyhan on 12/01/2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    // MARK: - PROPERTIES
    @State private var region: MKCoordinateRegion = {
       var mapCoordinates = CLLocationCoordinate2D(latitude: 59.3960817, longitude: 17.9108024)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        return mapRegion
    }()
    
    let locations: [FamousPeopleLocation] = Bundle.main.decode("locations.json")
    
    // MARK: - BODY
    var body: some View {
        // MARK: -No1 BASIC MAP
       // Map(coordinateRegion: $region)
       // Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        // MARK: - No2 ADVANCED MAP
        Map(coordinateRegion: $region, annotationItems: locations) { item in
            // (A) PIN: OLD STYLE (always static)
           // MapPin(coordinate: item.location, tint: .accentColor)
            
            // (B) MARKAR: NEW STYLE (always static)
           //  MapMarker(coordinate: item.location, tint: .accentColor)
            
            // (C) CUSTOM BASIC ANNOTATION (It could be interactive)
           /* MapAnnotation(coordinate: item.location) {
                Image("logo")
                    .resizable()
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32, alignment: .center)
            }//: ANNOTATION */
            
            // (D) CUSTOM ADVANCED ANNOTATION (it could be interactive)
            MapAnnotation(coordinate: item.location){
                MapAnnotationView(location: item)
            }
        }//: MAP
        .overlay(
            HStack(alignment: .center, spacing: 12, content: {
                Image("compass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48, alignment: .center)
                
                VStack(alignment: .leading, spacing: 3) {
                    HStack{
                        Text("Latitude: ")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                    Divider()
                    HStack{
                        Text("Longitude: ")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                }
            })//: HSTACK
                .padding(.vertical, 12)
                .padding(.horizontal, 16)
                .background(
                    Color.black
                        .cornerRadius(8)
                        .opacity(0.6)
                )
                .padding()
            , alignment: .top
        )
    }
}

// MARK: - PREVIEW
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
