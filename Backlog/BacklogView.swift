//
//  BacklogView.swift
//  Backlog
//
//  Created by Evan Nemetz on 6/4/23.
//

import SwiftUI

private var tasks = [
    Task(title: "high priority item", priority: .high),
    Task(title: "low priority item", priority: .low),
    Task(title: "medium priority item", priority: .medium)
]


struct BacklogView: View {
    @State private var items = tasks
    @State private var muliSelect = Set<UUID>()
    @State private var isPresented = false
    var body: some View {
        NavigationStack {
            List($items, selection: $muliSelect) { task in
                NavigationLink {
                    BacklogDetailView(item: task)
                } label: {
                    BacklogItemView(title: task.title, image: task.priority)
                }
                
            }.navigationTitle("Backlog")
            .toolbar {
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
                NewTaskSheet(items: $items, isPresented: $isPresented, newTask: Task(id: UUID(), title: "", priority: PrioritySymbol.unSelected
    ))
            }
        }
    }
}





func removeItem(at offsets: IndexSet) {
    tasks.remove(atOffsets: offsets)
}

//struct BacklogView_Previews: PreviewProvider {
//    static var previews: some View {
//        BacklogView()
//    }
//}
