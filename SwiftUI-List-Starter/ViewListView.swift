//
//  ContentView.swift
//  SwiftUI-List-Starter
//
//  Created by Sean Allen on 4/23/21.
//

import SwiftUI

struct ViewListView: View {
    var videos: [Video] = VideoList.topTen
    
    var body: some View {
        NavigationView {
            List(videos, id: \.id) { video in
                NavigationLink(
                    destination: VideoDetailView(video: video),
                    label: { VideoListView(video: video) }
                )
            }.navigationTitle("Sean's Top 10")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ViewListView()
    }
}

struct VideoListView: View {
    var video: Video
    var body: some View {
        HStack {
            Image(video.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 70)
                .padding(.vertical, 4)
    
            VStack(alignment: .leading, spacing: 5) {
                Text(video.title)
                    .fontWeight(.medium)
                    .lineLimit(2)
                    .minimumScaleFactor(1)
                
                Text(video.uploadDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}
