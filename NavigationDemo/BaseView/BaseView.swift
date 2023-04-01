//
//  BaseView.swift
//  NavigationDemo
//
//  Created by Joshua Buchanan on 4/1/23.
//

import SwiftUI

struct BaseView: View {
    
    @StateObject var baseViewModel: BaseViewModel = BaseViewModel()
    init() {}
    
    var body: some View {
            if baseViewModel.onBoardedStatus {
                HomeView()
            } else {
                OnboardingView(onboarded: $baseViewModel.onBoardedStatus)
            }
    }
}
