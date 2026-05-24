//
//  AIChatCourseApp.swift
//  AIChatCourse
//
//  Created by SHUBH JAIN on 16/05/26.
//

import SwiftUI

@main
struct AIChatCourseApp: App {
    @State private var showSplash = true
    var body: some Scene {
        WindowGroup {
            if showSplash {
                LaunchView()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            withAnimation(.easeOut(duration: 0.5)) {
                                showSplash = false
                            }
                        }
                    }
            } else {
                AppView()
            }
        }
    }
}
