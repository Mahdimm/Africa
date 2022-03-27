//
//  MainView.swift
//  Africa
//
//  Created by Mahdi Mahjoobi on 4/19/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            // Content view
            ContentView()
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Browse")
                }
            
            // Video list view
            VideoListView()
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("Watch")
                }
            
            // Map view
            MapView()
                .tabItem {
                    Image(systemName: "map")
                    Text("locations")
                }
            
            // Map view
            GalleryView()
                .tabItem {
                    Image(systemName: "photo")
                    Text("Gallery")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
