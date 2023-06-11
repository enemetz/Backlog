//
//  BacklogDetailView.swift
//  Backlog
//
//  Created by Evan Nemetz on 6/6/23.
//

import SwiftUI

struct BacklogDetailView: View {
    @Binding var item: Task
    @Binding var tasks: [Task]
    @State private var prioritySheetIsPresented = false
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 8) {
                HStack (alignment: .firstTextBaseline){
                    Text("Title: ")
                        .fontWeight(.light)
                        .padding(.leading, 15)
                    TextField(item.title, text: $item.title)
                }
            
                HStack {
                    Text("Priority:").fontWeight(.light).padding(.leading, 15)
                    PriorityTagView(item: item).onTapGesture {
                        prioritySheetIsPresented.toggle()
                    }.sheet(isPresented: $prioritySheetIsPresented) {
                        PrioritySheet(item: $item, prioritySheetIsPresented: $prioritySheetIsPresented).presentationDetents([.medium, .large])
                    }
                }
                
                Text("Comments: ")
                    .padding(.leading, 15)
                    .padding(.bottom, 15)
                    .fontWeight(.light)
                TextField("Enter comment", text: $item.comments, axis: .vertical)
                    .multilineTextAlignment(.leading)
                    .textFieldStyle(.roundedBorder)
                    .lineLimit(6, reservesSpace: true)
                    .padding()
                
                Spacer(minLength: 15)
            }
            
            VStack {
                Button(!item.isActive ? "Move to active items": "Move to backlog") {
                    print("toggle")
                    if(item.isActive) {
                        item.isActive = false
                    } else {
                        item.isActive = true
                    }
                    
                    
                }.buttonStyle(.borderedProminent).padding()
                Spacer(minLength: 20)
            }
           
        }.navigationTitle("Details")
    }
}

//struct BacklogDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        BacklogDetailView()
//    }
//}
