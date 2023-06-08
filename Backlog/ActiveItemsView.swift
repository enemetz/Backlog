//
//  ActiveItemsView.swift
//  Backlog
//
//  Created by Evan Nemetz on 6/4/23.
//

import SwiftUI

struct ActiveItemsView: View {
    var body: some View {
        NavigationView {
            Text("Active items...")
                .navigationTitle("Active Items")
        }
    }
}

struct ActiveItemsView_Previews: PreviewProvider {
    static var previews: some View {
        ActiveItemsView()
    }
}
