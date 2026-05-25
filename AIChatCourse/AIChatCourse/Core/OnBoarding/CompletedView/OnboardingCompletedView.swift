//
//  OnboardingCompletedView.swift
//  AIChatCourse
//
//  Created by SHUBH JAIN on 20/05/26.
//

import SwiftUI

struct OnboardingCompletedView: View {
    private enum Constants {
        static let text = "We have set up for your profile and you are ready to start chatting."
    }
    
    var selectedColor: Color = .orange
    @State var showLoadingView: Bool = false
    @Environment(AppState.self) private var rootAppState
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20) {
            Text("Setup Complete!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(selectedColor)
            
            Text(Constants.text)
                .font(.title)
                .fontWeight(.medium)
                .foregroundStyle(.secondary)
            
        }
        .frame(maxHeight: .infinity)
        .safeAreaInset(edge: .bottom) {
            ZStack {
                buttonView
            }
        }
        .padding(24)
    }
    
    var buttonView: some View {
        Button {
            onButtonTap()
        } label: {
            ZStack {
                if showLoadingView {
                    ProgressView()
                        .tint(.white)
                } else {
                    Text("Finish")
                }
            }
            .callToActionButton()
        }
        .disabled(showLoadingView)
    }
    
    func onButtonTap() {
        showLoadingView = true
        Task {
            try await Task.sleep(for: .seconds(3))
            showLoadingView = false
            
            rootAppState.updateViewState(showTabBarView: true)
        }
    }
}

#Preview {
    OnboardingCompletedView()
        .environment(AppState())
}
