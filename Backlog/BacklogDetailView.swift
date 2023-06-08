//
//  BacklogDetailView.swift
//  Backlog
//
//  Created by Evan Nemetz on 6/6/23.
//

import SwiftUI

struct BacklogDetailView: View {
    let item: Task
    var body: some View {
        NavigationView {
            VStack {
                Text(item.title)
                if(item.priority == .high) {
                    Text("high")
                } else if(item.priority == .medium) {
                    Text("medium")
                } else {
                    Text("low")
                }
            }
        }
    }
}

//struct BacklogDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        BacklogDetailView()
//    }
//}
