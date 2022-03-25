//
//  TrailsView.swift
//  HoboShare
//
//  Created by Dan Payne on 3/24/22.
//

import SwiftUI
import MapKit

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

let locations = [
    Location(name: "Buckingham Palace", coordinate: CLLocationCoordinate2D(latitude: 39.68, longitude: -105.70)),
    Location(name: "Tower of London", coordinate: CLLocationCoordinate2D(latitude: 39.68, longitude: -105.60))
]

struct TrailsView: View {
    
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 39.68, longitude: -105.70), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    var body: some View {
        Map(coordinateRegion: $mapRegion)
        
//        , annotationItems: locations) { location in
//            MapAnnotation(coordinate: location.coordinate) {
//                Circle()
//                    .stroke(.red, lineWidth: 3)
//                    .frame(width: 44, height: 44)
//            }
       // }
    }
}

struct TrailsView_Previews: PreviewProvider {
    static var previews: some View {
        TrailsView()
    }
}


