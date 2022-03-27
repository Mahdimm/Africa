//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Mahdi Mahjoobi on 4/26/21.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    
    // MARK: - PROPERTIES
    var videoSelected: String
    var videoTitle: String
    
    // MARK: - BODY
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4")) {
    //            Text("test")
            }
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .padding(.top, 8)
                    .padding(.horizontal, 12)
                , alignment: .topLeading
            )
        } //: VStack
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle, displayMode: .inline)
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView(videoSelected: "lion", videoTitle: "lion")
    }
}
