//
//  AppTabView.swift
//  DubDubGrub
//
//  Created by John Patrick Echavez on 6/21/25.
//

import SwiftUI

struct AppTabView: View {
    var body: some View {
        TabView {
            Tab("Map", systemImage: "map.fill") {
                LocationMapView()
            }
            Tab("Locations", systemImage: "building") {
                LocationListView()
            }
            Tab("Proifle", systemImage: "person") {
                ProfileView()
            }
            
        }
    }
}

#Preview {
    AppTabView()
}
