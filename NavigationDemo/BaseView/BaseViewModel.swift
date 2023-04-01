//
//  BaseViewModel.swift
//  NavigationDemo
//
//  Created by Joshua Buchanan on 4/1/23.
//

import Foundation

class BaseViewModel: ObservableObject {
    
    @Published var onBoardedStatus: Bool = false

    init() {
        getOnboardedStatus()
    }
    
    func getOnboardedStatus() {
        
        onBoardedStatus = false
        // onBoardedStatus = true
    }
}

