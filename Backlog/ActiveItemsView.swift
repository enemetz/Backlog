//
//  ActiveItemsView.swift
//  Backlog
//
//  Created by Evan Nemetz on 6/4/23.
//

import SwiftUI

struct ActiveItemsView: View {
//    @State private var items: [Task]
//
//    @State private var isPresented = false

    var body: some View {
        NavigationStack {
            VStack {
                Text("Test")
            }.navigationTitle("Active Items")
//            List($items) { task in
//                NavigationLink {
//                    BacklogDetailView(item: task)
//                } label: {
//                    BacklogItemView(title: task.title, image: task.priority)
//                }
//
//            }.navigationTitle("Backlog")
//            .toolbar {
//                ToolbarItem(placement: .navigationBarLeading) {
//                    EditButton()
//                }
//
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    Button("Add") {
//                        //TODO: Add new callsheet view to enter the task title and priority
//                        isPresented.toggle()
//                    }
//                }
//            }.sheet(isPresented: $isPresented) {
//                NewTaskSheet(items: $items, isPresented: $isPresented, newTask: Task(id: UUID(), title: "", priority: PrioritySymbol.unSelected
//    ))
//            }
                
        }
    }
    
//    func getActiveTasks() -> [Task]{
//        return items.filter({$0.isActive})
//    }
    
//    var activeTasks: [Task] {
//        switch filter {
//        case .isActive:
//            return items.filter({ $0.isActive })
//        }
//    }

}


//struct ActiveItemsView_Previews: PreviewProvider {
//    static var previews: some View {
//        ActiveItemsView()
//    }
//}
