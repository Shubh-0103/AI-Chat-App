//
//  LaunchView.swift
//  AIChatCourse
//
//  Created by SHUBH JAIN on 17/05/26.
//

import SwiftUI

struct LaunchView: View {
    var body: some View {
        ZStack {
            Color.red
                .ignoresSafeArea()

            Image("AppIconInternal")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
        }
    }
}
