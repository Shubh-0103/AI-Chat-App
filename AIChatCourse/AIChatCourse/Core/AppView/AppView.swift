//
//  AppView.swift
//  AIChatCourse
//
//  Created by SHUBH JAIN on 18/05/26.
//

import SwiftUI

struct AppView: View {

   @State var appState = AppState()

    var body: some View {
        AppViewBuilder(
            showTabBar: appState.showTabBar,
            tabBarView: {
                TabBarView()
            },
            onBoardingView: {
               WelcomeView()
            }
        )
        .environment(appState)
     }
}

#Preview {
    AppView(appState: AppState(showTabBar: false))
}

#Preview {
    AppView(appState: AppState(showTabBar: true))
}
