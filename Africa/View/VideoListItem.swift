//
//  VideoListItem.swift
//  Africa
//
//  Created by Mahdi Mahjoobi on 4/26/21.
//

import SwiftUI

struct VideoListItem: View {
    
    // MARK: - PROPERTIES
    let video: VideoModel
    
    // MARK: - BODY
    var body: some View {
        HStack(spacing: 20) {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 90)
                    .cornerRadius(10)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            } //: ZStack
            
            VStack(alignment: .leading, spacing: 5) {
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                
            } //: VStack
        }
    }
}

struct VideoListItem_Previews: PreviewProvider {
    static var previews: some View {
        let videos: [VideoModel] = Bundle.main.decode("videos.json")
        VideoListItem(video: videos[0])  
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
