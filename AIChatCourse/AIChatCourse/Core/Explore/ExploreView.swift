//
//  ExploreView.swift
//  AIChatCourse
//
//  Created by SHUBH JAIN on 19/05/26.
//

import SwiftUI

struct ExploreView: View {
    
    let avatar = AvatarModels.mocks.first
    var body: some View {
        NavigationStack {
            HeroCellView(
                title: avatar?.name,
                subtitle: avatar?.characterDescription,
                image: avatar?.profileImageName
            )
            .frame(height: 200)
            .navigationTitle("Explore")
        }
    }
}

#Preview {
    ExploreView()
}
