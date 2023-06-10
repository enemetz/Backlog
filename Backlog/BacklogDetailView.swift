//
//  BacklogDetailView.swift
//  Backlog
//
//  Created by Evan Nemetz on 6/6/23.
//

import SwiftUI

struct BacklogDetailView: View {
    let item: Task
    @State private var comment: String = ""
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 8) {
                HStack (alignment: .firstTextBaseline){
                    Text("Title: ").fontWeight(.light).padding(.leading, 15)
                    Text(item.title.capitalized)
                    
                }
            
                HStack {
                    Text("Priority:").fontWeight(.light).padding(.leading, 15)
                    PriorityTagView(item: item)
                }
                
                Text("Comments: ").padding(.leading, 15)
                TextField("Enter comment", text: $comment).multilineTextAlignment(.center)
               
                Spacer()
            }
        }.navigationTitle("Details")
    }
}

//struct BacklogDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        BacklogDetailView()
//    }
//}
