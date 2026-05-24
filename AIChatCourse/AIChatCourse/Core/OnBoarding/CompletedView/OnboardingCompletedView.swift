//
//  OnboardingCompletedView.swift
//  AIChatCourse
//
//  Created by SHUBH JAIN on 20/05/26.
//

import SwiftUI

struct OnboardingCompletedView: View {
    
    @Environment(AppState.self) private var rootAppState
    
    var body: some View {
        VStack {
            Text("Onboarding completed")
                .frame(maxHeight: .infinity)

            Button {
               onButtonTap()
            } label: {
                Text("Finish")
                    .callToActionButton()
            }
        }
        .padding(16)
    }
    
    func onButtonTap() {
        rootAppState.updateViewState(showTabBarView: true)
    }
}
