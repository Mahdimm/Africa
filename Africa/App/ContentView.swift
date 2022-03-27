//
//  ContentView.swift
//  Africa
//
//  Created by Mahdi Mahjoobi on 4/19/21.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { item in
                    NavigationLink(destination: AnimalDetailView(animal: item)) {
                        AnimalListView(animals: item)
                    }
                }
            } //: List
            .navigationBarTitle("Africa", displayMode: .large)
        } //: Navigation View
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
