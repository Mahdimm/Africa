//
//  ExternalWebLinkView.swift
//  Africa
//
//  Created by Mahdi Mahjoobi on 4/26/21.
//

import SwiftUI

struct ExternalWebLinkView: View {
    
    // MARK: - PROPERTIES
    let animal: Animal
    
    // MARK: - BODY
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    Link(animal.name, destination: URL(string: animal.link)!)
                }
                .foregroundColor(.accentColor)
            }
        } //: Box
    }
}

struct ExternalWebLinkView_Previews: PreviewProvider {
    static var previews: some View {
        let animals: [Animal] = Bundle.main.decode("animals.json")
        ExternalWebLinkView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
