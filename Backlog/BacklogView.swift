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
    @State private var titleString = ""
    var body: some View {
        NavigationStack {
            List(tasks, selection: $muliSelect) { item in
                NavigationLink {
                    BacklogDetailView(item: item)
                } label: {
                    BacklogItemView(title: item.title, image: item.priority)
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
                        print("Shit")
                    }
                }
            }.sheet(isPresented: $isPresented) {
                NewTaskSheet(title: titleString)
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
