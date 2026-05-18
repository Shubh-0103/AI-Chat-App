//
//  AppView.swift
//  AIChatCourse
//
//  Created by SHUBH JAIN on 18/05/26.
//

import SwiftUI

struct AppView: View {

   @AppStorage("showTabBarView") var showTabBar: Bool = false

    var body: some View {
        AppViewBuilder(
            showTabBar: showTabBar,
            tabBarView: {
                ZStack {
                    Color.red.ignoresSafeArea()
                    Text("Tab Bar")
                }
            },
            onBoardingView: {
                ZStack {
                    Color.green.ignoresSafeArea()
                    Text("onBoarding")
                }
            }
        )
        .onTapGesture {
            showTabBar.toggle()
        }
     }
}

#Preview {
    AppView(showTabBar: true)
}

#Preview {
    AppView(showTabBar: false)
}
