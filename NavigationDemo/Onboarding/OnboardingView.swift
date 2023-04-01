//
//  OnboardingView.swift
//  NavigationDemo
//
//  Created by Joshua Buchanan on 4/1/23.
//

import SwiftUI

struct OnboardingView: View {
    
    @Binding var onboarded: Bool
    
    var body: some View {
        NavigationStack {
            Text("Welcome to onboarding")
            Button("Tap me to agree", action: {
                onboarded = true
            })            
        }
    }
}
