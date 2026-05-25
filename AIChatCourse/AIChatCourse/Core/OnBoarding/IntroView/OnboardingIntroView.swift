//
//  OnboardingIntroView.swift
//  AIChatCourse
//
//  Created by SHUBH JAIN on 24/05/26.
//

import SwiftUI

struct OnboardingIntroView: View {
    
    private enum Constants {
        static let onboardingIntroText = Text("""
            Make your own \(Text("avatars").foregroundStyle(.accent).fontWeight(.semibold)) and chat with them!

            Have \(Text("real conversations").foregroundStyle(.accent).fontWeight(.semibold)) with AI generated responses.
            """)
    }
    var body: some View {
        VStack {
            textView
            buttonView
        }
        .padding(24)
    }

    private var buttonView: some View {
        NavigationLink {
            OnboardingColorView()

        } label: {
            Text("Continue")
                .callToActionButton()
        }
    }

    private var textView: some View {
        Group {
            Constants.onboardingIntroText
        }
        .font(.title3)
        .baselineOffset(6)
        .frame(maxHeight: .infinity)
    }
}

#Preview {
    OnboardingIntroView()
}
