//
//  WelcomeView.swift
//  AIChatCourse
//
//  Created by SHUBH JAIN on 20/05/26.
//

import SwiftUI

struct WelcomeView: View {

    @State private var randomImageUrl = Constants.randomImageUrl

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {

                ImageLoaderView(urlString: randomImageUrl)
                    .ignoresSafeArea(edges: [.top, .horizontal])

                VStack(alignment: .center, spacing: 5) {
                    Text("AI Chat 🤟")
                        .font(.largeTitle)
                        .fontWeight(.semibold)

                    VStack(spacing: 25) {

                        Text("Practice at your own pace")
                            .font(.caption)
                            .foregroundStyle(.secondary)

                        VStack(spacing: 20) {
                            
                            buttonView

                            VStack(spacing: 30) {

                                signInAccountView
                                termsAndConditionsView
                            }
                        }
                    }
                }
            }
        }
    }

    private var buttonView: some View {
        NavigationLink {
            OnboardingCompletedView()

        } label: {
            Text("Get Started")
                .callToActionButton()
        }
        .padding(.horizontal, 16)
    }

    private var signInAccountView: some View {
        Text("Already have an account? Sign in.")
            .font(.body)
            .foregroundStyle(.primary)
            .underline(true)
            .tappableBackground()
            .onTapGesture {

            }
    }

    private var termsAndConditionsView: some View {
        HStack(spacing: 8) {
            Link(destination: URL(string: Constants.termsAndConditionUrl)!) {
                Text("Terms of Service")
            }

            Circle()
                .fill(.accent)
                .frame(width: 4, height: 4)

            Link(destination: URL(string: Constants.privacyUrl)!) {
                Text("Privacy Policy")
            }
        }
    }
}

#Preview {
    WelcomeView()
}
