//
//  VideoDetailView.swift
//  SwiftUI-List-Starter
//
//  Created by Lúcio Andrade Leitão Junior on 09/08/23.
//

import SwiftUI

struct VideoDetailView: View {
    var video: Video
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 150)
                .cornerRadius(20)
            Text(video.title)
                .font(.title2)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
            
            HStack(spacing: 40) {
                Label("\(video.viewCount)", systemImage: "eye.fill")
                Text(video.uploadDate)
            }
                .foregroundColor(.secondary)
                .font(.subheadline)
            Text(video.description)
                .font(.body)
                .padding(.top, 40)
            Spacer()
            Link(
                destination: video.url,
                label: {
                    Button(title: "Watch now")
                }
            )
        }.padding(.horizontal, 16)
    }
}

struct VideoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VideoDetailView(video: VideoList.topTen.first!)
    }
}

struct Button: View {
    var title: String
    var body: some View {
        Text(title)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .frame(width: 180, height: 50)
            .background(Color(.systemRed))
            .cornerRadius(10)
    }
}
