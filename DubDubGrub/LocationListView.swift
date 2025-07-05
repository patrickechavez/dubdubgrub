//
//  LocationListView.swift
//  DubDubGrub
//
//  Created by John Patrick Echavez on 6/21/25.
//

import SwiftUI

struct LocationListItem: Identifiable {
    var id: UUID = UUID()
    var image: String
    var name: String
}

struct LocationListView: View {
    
    private let locations = [
        LocationListItem(image: "starbucks", name: "Starbucks"),
        LocationListItem(image: "dunkin", name: "Dunkin' Donuts"),
        LocationListItem(image: "wawa", name: "Wawa"),
    ]
    
    var body: some View {
        
        NavigationView {
            List {
                LocationCell()
            }
            .listStyle(.plain)
            .navigationTitle("Grub Spots")
        }

    }
}

#Preview {
    LocationListView()
}

struct AvatarView: View {
    
    var size: CGFloat
    
    var body: some View {
        Image("default-avatar")
            .resizable()
            .scaledToFit()
            .frame(width: size, height: size)
            .clipShape(Circle())
    }
}

struct LocationCell: View {
    var body: some View {
        ForEach(0..<10) { item in
            HStack {
                Image("default-square-asset")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    .padding(.vertical, 8)
                
                VStack(alignment: .leading) {
                    Text("Title Name")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .lineLimit(1)
                        .minimumScaleFactor(0.75)
                    
                    HStack {
                        AvatarView(size: 36)
                        AvatarView(size: 36)
                        AvatarView(size: 36)
                        AvatarView(size: 36)
                        AvatarView(size: 36)
                    }
                }
                .padding(.leading)
            }
        }
    }
}
