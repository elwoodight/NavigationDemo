//
//  HomeViewModel.swift
//  NavigationDemo
//
//  Created by Joshua Buchanan on 4/1/23.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    @Published var listOfFolders: [String] = [String]()
    
    init() {
        getListOfFolders()
    }
    
    func getListOfFolders() {
        listOfFolders.append("Folder A")
        listOfFolders.append("Folder B")
        listOfFolders.append("Folder C")
    }
}
