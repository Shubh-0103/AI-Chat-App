//
//  OnboardingColorView.swift
//  AIChatCourse
//
//  Created by SHUBH JAIN on 24/05/26.
//

import SwiftUI

struct OnboardingColorView: View {
    
    private enum Constants {
        static let columnElements = Array(repeating: GridItem(.flexible(), spacing: 16), count: 3)
        static let profileColors: [Color] = [.red, .blue, .yellow, .green, .orange, .indigo, .purple, .gray, .black, .accent, .cyan, .brown]
    }
    
    @State private var selectedColor: Color? = nil
    
    var body: some View {
        VStack {
            ScrollView {
                gridView
            }
            .safeAreaInset(edge: .bottom, alignment: .center, spacing: 16) {
                ZStack {
                    if let selectedColor {
                        buttonView(selectedColor: selectedColor)
                            .transition(AnyTransition.move(edge: .bottom))
                    }
                }
                .background(Color(uiColor: .systemBackground))
            }
        }
        .animation(.bouncy, value: selectedColor)
        .padding(24)
    }
    
    private var headerView: some View {
        Text("Select a profile color")
            .font(.headline)
            .frame(maxWidth: .infinity)
            .padding(.top, 24)
            .padding(.bottom, 16)
        
    }
    
    private var profileColorView: some View {
        ForEach(Constants.profileColors, id: \.self) { color in
            Circle()
                .fill(.accent)
                .overlay {
                    Circle()
                        .fill(color)
                        .padding(selectedColor == color ? 10 : 0)
                        .onTapGesture {
                            selectedColor = color
                        }
                }
        }
    }
    
    private func buttonView(selectedColor: Color) -> some View {
        
        NavigationLink {
            OnboardingCompletedView(selectedColor: selectedColor)

        } label: {
            Text("Continue")
                .callToActionButton()
        }
    }
    
    private var gridView: some View {
        LazyVGrid(
            columns: Constants.columnElements,
            alignment: .center,
            spacing: 16,
            pinnedViews: [.sectionHeaders],
            content: {
                Section(content: {
                    profileColorView
                }, header: {
                    headerView
                })
            }
        )
    }
}

#Preview {
    OnboardingColorView()
}
