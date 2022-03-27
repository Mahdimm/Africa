//
//  InsetMapView.swift
//  Africa
//
//  Created by Mahdi Mahjoobi on 4/26/21.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    
    // MARK: - PROPERTIES
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60, longitudeDelta: 60))
    
    // MARK: - BODY
    var body: some View {
        Map(coordinateRegion: $region)
            .overlay(
                NavigationLink(destination: MapView()) {
                    HStack {
                        Image(systemName: "mappin.circle")
                            .foregroundColor(.white)
                            .imageScale(.large)
                        
                        Text("Locations")
                            .foregroundColor(.accentColor)
                            .fontWeight(.bold)
                    } //: HStack
                    .padding(.vertical, 5)
                    .padding(.horizontal, 5)
                    .background(
                        Color.black
                            .opacity(0.4)
                            .cornerRadius(5)
                    )
                }
                .padding(12)
                , alignment: .topTrailing
            )
            .frame(height: 250)
            .cornerRadius(12)
    }
}

struct InsetMapView_Previews: PreviewProvider {
    static var previews: some View {
        InsetMapView()
            .previewLayout(.sizeThatFits)
    }
}
