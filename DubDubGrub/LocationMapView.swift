//
//  LocationMapView.swift
//  DubDubGrub
//
//  Created by John Patrick Echavez on 6/21/25.
//

import SwiftUI
import MapKit

struct LocationMapView: View {
    
//    @State private var cameraPosition = MKCoordinateRegion(
//        center: CLLocationCoordinate2D(latitude: 10.29628796044895, longitude: 123.89822864496686),
//        span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
//    )
    
    @State private var cameraPosition = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 10.29628796044895, longitude: 123.89822864496686),
            span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        )
    )
    
    var body: some View {
        ZStack {
            Map(position: $cameraPosition)
                .ignoresSafeArea(edges: .all)
            
            VStack {
                Image("ddg-map-logo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 70)
                    .shadow(radius: 10)
                
                Spacer()
            }
            
        }
    }
}

#Preview {
    LocationMapView()
}
