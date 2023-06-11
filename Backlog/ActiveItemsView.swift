//
//  ActiveItemsView.swift
//  Backlog
//
//  Created by Evan Nemetz on 6/4/23.
//

import SwiftUI

struct ActiveItemsView: View {
    @Binding var items: [Task]
    @State private var isPresented = false

    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach($items.filter{$0.isActive.wrappedValue}) { item in
                        NavigationLink {
                            BacklogDetailView(item: item, tasks: $items)
                        } label: {
                            BacklogItemView(title: item.title, image: item.priority)
                        }
                    }
                    

                }.navigationTitle("Active Tasks")
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
                NewTaskSheet(items: $items, isPresented: $isPresented, isActive: true)
            }
                
        }
    }
}


//struct ActiveItemsView_Previews: PreviewProvider {
//    static var previews: some View {
//        ActiveItemsView()
//    }
//}
