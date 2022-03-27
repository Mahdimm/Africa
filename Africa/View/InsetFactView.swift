//
//  InsetFactView.swift
//  Africa
//
//  Created by Mahdi Mahjoobi on 4/26/21.
//

import SwiftUI

struct InsetFactView: View {
    
    // MARK: - PROPERTIES
    let animal: Animal
    
    // MARK: - BODY
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        } //: Box
    }
}

struct InsetFactView_Previews: PreviewProvider {

    static var previews: some View {
        let animals: [Animal] = Bundle.main.decode("animals.json")
        InsetFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
