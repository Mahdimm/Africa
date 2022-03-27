//
//  HeadingView.swift
//  Africa
//
//  Created by Mahdi Mahjoobi on 4/24/21.
//

import SwiftUI

struct HeadingView: View {
    
    // MARK: - PROPERTIES
    var headingImage: String
    var headingText: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .resizable()
                .frame(width: 30, height: 30)
                .accentColor(.accentColor)
                .imageScale(.large)
            
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.vertical, 8)
        .padding(.horizontal, 8)
    }
}

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wildrness in Pictures")
            .previewLayout(.sizeThatFits)
    }
}
