//
//  PriorityTagView.swift
//  Backlog
//
//  Created by Evan Nemetz on 6/9/23.
//

import SwiftUI

struct PriorityTagView: View {
    var item: Task
    var body: some View {
        if(item.priority == .high) {
            Text("high")
                .padding(6)
                .background(RoundedRectangle(cornerRadius: 8).fill(.red)).foregroundColor(.white)
        } else if(item.priority == .medium) {
            Text("medium")
                .padding(6)
                .background(RoundedRectangle(cornerRadius: 8).fill(.mint)).foregroundColor(.white)
        } else {
            Text("low").padding(6)
                .background(RoundedRectangle(cornerRadius: 8).fill(.indigo)).foregroundColor(.white)
        }
        
    }
}

//struct PriorityTagView_Previews: PreviewProvider {
//    static var previews: some View {
//        PriorityTagView()
//    }
//}
