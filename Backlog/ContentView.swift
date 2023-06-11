//
//  ContentView.swift
//  Backlog
//
//  Created by Evan Nemetz on 6/4/23.
//

import SwiftUI

struct ContentView: View {
    @State var tasks = MockData().getMockData()
    var body: some View {
        TabView {
            ActiveItemsView(items: $tasks).tabItem {
                Label("Active Tasks", systemImage: "list.clipboard.fill")
            }
                
            BacklogView(tasks: $tasks).tabItem {
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
