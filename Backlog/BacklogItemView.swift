//
//  BacklogItemView.swift
//  Backlog
//
//  Created by Evan Nemetz on 6/6/23.
//

import SwiftUI

struct BacklogItemView: View {
    var title: String
    var image: PrioritySymbol
    var body: some View {
//        Label(title, systemImage: image)
        HStack {
            if(image == .high) {
                Image(systemName: image.rawValue)
                    .renderingMode(.template).foregroundColor(.red)
            } else {
                Image(systemName: image.rawValue)
                    .renderingMode(.template).foregroundColor(image == .medium ? .mint: .indigo)
            }
            
            
            Text(title)
        }
    }
}

//struct BacklogItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        BacklogItemView()
//    }
//}
