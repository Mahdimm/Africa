//
//  AnimalListView.swift
//  Africa
//
//  Created by Mahdi Mahjoobi on 4/20/21.
//

import SwiftUI

struct AnimalListView: View {
    
    // MARK: - PROPERTIES
    let animals: Animal
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(animals.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )
            
            VStack(alignment: .leading, spacing: 8) {
                Text(animals.name)
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(animals.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)

            } //: VStack
        } //: HStack
        .padding(10)
    }
}

struct AnimalListView_Previews: PreviewProvider {
    static var previews: some View {
        let animals: [Animal] = Bundle.main.decode("animals.json")

        AnimalListView(animals: animals[0])
            .previewLayout(.sizeThatFits)
    }
}
