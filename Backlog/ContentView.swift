//
//  ContentView.swift
//  Backlog
//
//  Created by Evan Nemetz on 6/4/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            ActiveItemsView().tabItem {
                Label("Active Tasks", systemImage: "list.clipboard.fill")
            }
                
            BacklogView().tabItem {
                Label("Backlog", systemImage: "archivebox.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
