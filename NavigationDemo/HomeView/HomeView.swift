//
//  HomeView.swift
//  NavigationDemo
//
//  Created by Joshua Buchanan on 4/1/23.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var homeViewModel: HomeViewModel = HomeViewModel()
    
    init() {
        
    }
    
    var body: some View {
        NavigationStack {
            Text("HOME VIEW")
            List(homeViewModel.listOfFolders, id: \.self) { folder in
                NavigationLink(value: folder) {
                    Text("\(folder)")
                }
            }
            .navigationDestination(for: String.self) { folder in
                FolderView(folderName: folder)
            }
        }
    }
}

struct Folder: Hashable {
    static func == (lhs: Folder, rhs: Folder) -> Bool {
        return (lhs.id == rhs.id) && (lhs.name == rhs.name)
    }
    
    var id: String = "123"
    var name: String =  "abc"
}
