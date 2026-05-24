//
//  SettingsView.swift
//  AIChatCourse
//
//  Created by SHUBH JAIN on 20/05/26.
//

import SwiftUI

struct SettingsView: View {

    @Environment(AppState.self) private var appState
    @Environment(\.dismiss) private var dismiss

    var body: some View {

        NavigationStack {
            List {
                Button {
                    onButtonPressed()
                } label: {
                    Text("Sign Out")
                }
            }
            .navigationTitle("Settings")
        }
    }

    func onButtonPressed() {
        dismiss()
        
        Task {
            try? await Task.sleep(for: .seconds(1))
            appState.updateViewState(showTabBarView: false)
        }
    }
}

#Preview {
    SettingsView()
        .environment(AppState())
}
