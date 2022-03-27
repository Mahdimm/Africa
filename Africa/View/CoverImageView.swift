//
//  CoverImageView.swift
//  Africa
//
//  Created by Mahdi Mahjoobi on 4/19/21.
//

import SwiftUI

struct CoverImageView: View {
    
    private let coverImage: [CoverImage] = Bundle.main.decode("covers.json")
    
    var body: some View {
        TabView {
            ForEach(coverImage) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
