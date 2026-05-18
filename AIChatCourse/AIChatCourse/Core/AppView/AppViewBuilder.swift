//
//  AppViewBuilder.swift
//  AIChatCourse
//
//  Created by SHUBH JAIN on 18/05/26.
//

import SwiftUI

struct AppViewBuilder<TabBarView: View, OnboardingView: View>: View{
    var showTabBar: Bool = false
    @ViewBuilder var tabBarView: TabBarView
    @ViewBuilder var onBoardingView: OnboardingView
    var body: some View {
        ZStack {
            if showTabBar {
                tabBarView
                    .transition(.move(edge: .trailing))
            } else {
                onBoardingView
                    .transition(.move(edge: .leading))
            }
        }
        .animation(.smooth, value: showTabBar)
    }
}
