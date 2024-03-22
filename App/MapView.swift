//
//  MapView.swift
//  Africa
//
//  Created by Shazeen Thowfeek on 19/03/2024.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    var body: some View {
        
        //MARK: no1 basic map
    
        //Map(coordinateRegion: $region)
        //MARK: 2  advanced map
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: { item  in
            // (A) pin - old style (always static)
            //MapPin(coordinate: item.location, tint: .accentColor)
            
            // (B) Marker: new style always static
//            MapMarker(coordinate: item.location, tint: .accentColor)
            
            //(C): custom basic annotation(it could be interactive)
//            MapAnnotation(coordinate: item.location) {
//                Image("logo")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 32,height: 32,alignment: .center)
//            }
            
            //option(D) - custom advanced annotation (interactive)
            MapAnnotation(coordinate: item.location) {
                MapAnnotationViiew(location: item)
            }
        })//map
        .overlay(
            HStack(alignment:.center, spacing: 12) {
                Image("compass")
                .resizable()
                .scaledToFit()
            .frame(width: 48,height: 48,alignment: .center)
                VStack(alignment: .leading,spacing: 3){
                    HStack{
                        Text("Latitude:")
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
                        Text("Longitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                }
            }//Hstack
                .padding(.vertical,12)
                .padding(.horizontal,16)
                .background(
                    Color.black
                        .cornerRadius(8)
                        .opacity(0.6)
                )
                .padding()
            ,alignment: .top
        )
    }
}

#Preview {
    MapView()
}
