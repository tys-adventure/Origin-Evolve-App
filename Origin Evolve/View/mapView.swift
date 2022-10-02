//
//  mapView.swift
//  Origin Evolve
//
//  Created by Tyler Phillips on 10/1/22.
//

import SwiftUI
import MapKit

struct mapView: View {
    
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )

    var body: some View {
        Map(coordinateRegion: $region)
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
         region = MKCoordinateRegion(
             center: coordinate,
             span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
         )
     }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        mapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
