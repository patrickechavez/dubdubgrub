//
//  LocationDetailView.swift
//  DubDubGrub
//
//  Created by John Patrick Echavez on 6/22/25.
//

import SwiftUI

struct LocationDetailView: View {
    
    let columns: [GridItem] =  [GridItem(.flexible()),
                                GridItem(.flexible()),
                                GridItem(.flexible())]
    
    var body: some View {
        NavigationStack {
            
            VStack(spacing: 16) {
                Image("default-banner-asset")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 120)
                
                HStack {
                    Label("Cebu City, Cebu", systemImage: "mappin.and.ellipse")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                Text("Lorem ipsum dolor sit amet consectetur adipisicing elit. Quo, voluptatem! Lorem ipsum dolor sit amet consectetur adipisicing elit. Quo, voluptatem!")
                    .lineLimit(3)
                    .minimumScaleFactor(0.75)
                    .frame(height: 70)
                    .padding(.horizontal)
                
                ZStack {
                    Capsule()
                        .frame(height: 80)
                        .foregroundStyle(Color(.secondarySystemBackground))
                    
                    HStack(spacing: 20) {
                        Button {
                            
                        } label: {
                            LocationActionButton(colorName: .brandPrimary, imageName: "location.fill")

                        }
                        
                        Link(destination: URL(string: "https://www.apple.com")!) {
                            LocationActionButton(colorName: .brandPrimary, imageName: "network")
                        }

                        Button {
                            
                        } label: {
                            LocationActionButton(colorName: .brandPrimary, imageName: "phone.fill")

                        }
                        
                        Button {
                            
                        } label: {
                            LocationActionButton(colorName: .brandPrimary, imageName: "person.fill.checkmark")

                        }
                    }
                }
                .padding(.horizontal)
                
                Text("Who's Here?")
                    .bold()
                    .font(.title2)
                
                ScrollView {
                    
                    LazyVGrid(columns: columns, content: {
                        FirstNameAvatarView(firstName: "Patrick")
                        FirstNameAvatarView(firstName: "John")
                        FirstNameAvatarView(firstName: "Sean")
                        FirstNameAvatarView(firstName: "Aidenne")
                        FirstNameAvatarView(firstName: "Peter Parker")
                        FirstNameAvatarView(firstName: "Peter Parker")
                        FirstNameAvatarView(firstName: "Peter Parker")
                        FirstNameAvatarView(firstName: "Peter Parker")
                        FirstNameAvatarView(firstName: "Peter Parker")
                        FirstNameAvatarView(firstName: "Peter Parker")
                        FirstNameAvatarView(firstName: "Peter Parker")
                    })
                    
                }

                
                
                Spacer()
            }
            .navigationTitle("Location Name")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    LocationDetailView()
}

struct LocationActionButton: View {
    
    let colorName: Color
    let imageName: String
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundStyle(colorName)
                .frame(width: 60, height: 60)
            
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.white)
                .frame(width: 22, height: 22)
        }
        
        
        
    }
}

struct FirstNameAvatarView: View {
    
    let firstName: String
    
    var body: some View {
        
        VStack {
            AvatarView(size: 64)
            
            Text(firstName)
                .bold()
                .lineLimit(1)
                .minimumScaleFactor(0.75)
        }
    }
}
