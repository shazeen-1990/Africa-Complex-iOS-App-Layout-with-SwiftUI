//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Shazeen Thowfeek on 20/03/2024.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    
    var videoSelected: String
    var videoTitle: String
    
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4")){
               // Text(videoTitle)
            }
            .overlay(alignment: .topLeading) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32,height: 32)
                    .padding(.top,6)
                    .padding(.horizontal,8)
                
            }
        }//vstack
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle,displayMode: .inline)
    }
}

#Preview {
    NavigationView {
        VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
    }
}
