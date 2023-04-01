//
//  FolderViewModel.swift
//  NavigationDemo
//
//  Created by Joshua Buchanan on 4/1/23.
//

import SwiftUI

class FolderViewModel: ObservableObject {
    private var folderName: String
    
    init(folderName: String) {
        self.folderName = folderName
        getListOfURLs()
    }
    
    @Published var listOfURLs: [String] = [String]()
    
    func getListOfURLs() {
        listOfURLs.append("FolderName: \(folderName) https://www.apple.com")
        listOfURLs.append("FolderName: \(folderName) https://www.google.com")
        listOfURLs.append("FolderName: \(folderName) https://www.youtube.com")
    }
}
