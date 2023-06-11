//
//  BacklogView.swift
//  Backlog
//
//  Created by Evan Nemetz on 6/4/23.
//

import SwiftUI

struct BacklogView: View {
    @Binding var tasks: [Task]
    @State private var muliSelect = Set<UUID>()
    @State private var isPresented = false
    var body: some View {
        NavigationStack {
            List {
                ForEach($tasks.filter{!$0.isActive.wrappedValue}) { item in
                    NavigationLink {
                        BacklogDetailView(item: item, tasks: $tasks)
                    } label: {
                        BacklogItemView(title: item.title, image: item.priority)
                    }
                    
                }.navigationTitle("Backlog")
                    
            }.toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Add") {
                        //TODO: Add new callsheet view to enter the task title and priority
                        isPresented.toggle()
                    }
                }
            }.sheet(isPresented: $isPresented) {
                NewTaskSheet(items: $tasks, isPresented: $isPresented, isActive: false)
            }
        }
    }
}





//func removeItem(at offsets: IndexSet) {
//    tasks.remove(atOffsets: offsets)
//}

//struct BacklogView_Previews: PreviewProvider {
//    static var previews: some View {
//        BacklogView()
//    }
//}
