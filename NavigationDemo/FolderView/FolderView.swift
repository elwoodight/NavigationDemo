//
//  FolderView.swift
//  NavigationDemo
//
//  Created by Joshua Buchanan on 4/1/23.
//

import SwiftUI

struct FolderView: View {
    
    @StateObject var folderViewModel: FolderViewModel
    
    init(folderName: String) {
        self._folderViewModel = StateObject(wrappedValue: FolderViewModel(folderName: folderName))
    }
    
    var body: some View {
        Text("Folder View:")
        List(folderViewModel.listOfURLs, id: \.self) { url in
            NavigationLink(value: url) {
               Text("URL: \(url)")
            }
        }
        .navigationDestination(for: String.self, destination: { url in
            QRCodeView(url: url)
        })
    }
}
