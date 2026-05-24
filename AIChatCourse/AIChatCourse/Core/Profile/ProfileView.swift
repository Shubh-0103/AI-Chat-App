//
//  ProfileView.swift
//  AIChatCourse
//
//  Created by SHUBH JAIN on 19/05/26.
//

import SwiftUI

struct ProfileView: View {

    @State var showSettingsView: Bool = false
    var body: some View {
        NavigationStack {
            Text("Profile")
                .navigationBarTitle("Profile")
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        settingsButton
                    }
                }
        }
        .sheet(isPresented: $showSettingsView) {
            SettingsView()
        }
    }
    private var settingsButton: some View {
        Button {
            onSettingsPressed()
        } label: {
            Image(systemName: "gear")
                .font(.headline)
        }
    }
    private func onSettingsPressed() {
        showSettingsView = true
    }
}

#Preview {
  ProfileView()
}
