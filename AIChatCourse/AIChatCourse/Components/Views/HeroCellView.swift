//
//  HeroCellView.swift
//  AIChatCourse
//
//  Created by SHUBH JAIN on 26/05/26.
//

import SwiftUI

struct HeroCellView: View {
    var title: String? = "Hello"
    var subtitle: String? = "World is a asbas ca a anaac!"
    var image: String? = Constants.randomImageUrl

    var body: some View {
        ZStack {
            if let image = image {
                ImageLoaderView(urlString: image)
                
            } else {
                Rectangle()
                    .fill(Color.accent)
            }
        }
        .overlay(
            alignment: .bottomLeading,
            content: {
                VStack(alignment: .leading) {
                    if let title = title {
                        Text(title)
                            .font(.headline)
                    }
                    if let subtitle = subtitle {
                        Text(subtitle)
                            .font(.subheadline)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundStyle(.white)
                .padding(24)
                .background {
                    LinearGradient(
                        colors: [Color.black.opacity(0), Color.black.opacity(0.3), Color.black.opacity(0.4)],
                        startPoint: .top,
                        endPoint: .bottom
                    )
            }
        })
        .cornerRadius(16)
    }
}

#Preview {
    HeroCellView()
        .frame(width: 300, height: 200)
}
