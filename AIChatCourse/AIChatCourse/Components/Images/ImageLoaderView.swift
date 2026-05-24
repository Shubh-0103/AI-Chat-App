//
//  ImageLoaderView.swift
//  AIChatCourse
//
//  Created by SHUBH JAIN on 24/05/26.
//

import SwiftUI
import SDWebImageSwiftUI

struct ImageLoaderView: View {

    var urlString = Constants.randomImageUrl
    var resizingMode: ContentMode = .fill

    var body: some View {
        Rectangle()
            .opacity(0)
            .overlay {
                WebImage(url: URL(string: urlString))
                    .resizable()
                    .indicator(.activity)
                    .aspectRatio(contentMode: resizingMode)
            }
            .clipped()
    }
}

#Preview {
    ImageLoaderView()
        .frame(width: 200, height: 400)
}
