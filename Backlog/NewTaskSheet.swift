//
//  NewTaskSheet.swift
//  Backlog
//
//  Created by Evan Nemetz on 6/4/23.
//

import SwiftUI

struct NewTaskSheet: View {
    @State private var title: String = ""
    @Binding var items: [Task]
    @Binding var isPresented: Bool
    @State private var isSelectedPriority = false
    var isActive: Bool
    @State private var newTask: Task = Task(title: "", priority: PrioritySymbol.unSelected)

    var body: some View {
        NavigationView {
            
            VStack(alignment: .center) {
                TextField("Task title", text: $title).padding(.all).multilineTextAlignment(.center).textFieldStyle(.roundedBorder).font(Font.system(size: 16))
                
                Text("Pick Priority").fontWeight(.bold)
                
                HStack(spacing: 20) {
                    Text("high")
                        .padding(6)
                        .font(Font.system(size: 24))
                        .background(RoundedRectangle(cornerRadius: 8).fill(.red))
                        .foregroundColor(.white)
                        //.border(newTask.priority == .high ? .blue: .clear)
                        .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(newTask.priority == .high ? .blue: .clear, lineWidth: 2)
                            )
                        .onTapGesture {
                            newTask.priority = PrioritySymbol.high
                           
                        }
                    Text("medium")
                        .padding(6)
                        .font(Font.system(size: 24))
                        .background(RoundedRectangle(cornerRadius: 8).fill(.mint))
                        .foregroundColor(.white)
                        .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(newTask.priority == .medium ? .blue: .clear, lineWidth: 2)
                            )
                        .onTapGesture {
                            newTask.priority = PrioritySymbol.medium
                        }
                    Text("low").padding(6)
                        .font(Font.system(size: 24))
                        .background(RoundedRectangle(cornerRadius: 8).fill(.indigo))
                        .foregroundColor(.white)
                        .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(newTask.priority == .low ? .blue: .clear, lineWidth: 3)
                            )
                        .onTapGesture {
                            newTask.priority = PrioritySymbol.low
                        }
                }.padding()
                Text("Comments: ")
                    .fontWeight(.bold)
                TextField("Enter comment", text: $newTask.comments, axis: .vertical)
                    .multilineTextAlignment(.leading)
                    .textFieldStyle(.roundedBorder)
                    .lineLimit(6, reservesSpace: true)
                    .padding()
                
                
                Button("Add task") {
                    print("Submitted")
                    newTask.title = title
                    newTask.isActive = isActive
                    items.append(newTask)
                    isPresented.toggle()
                }.buttonStyle(.bordered)
                    .padding()
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button("Close") {
                                //TODO: Add new callsheet view to enter the task title and priority
                                isPresented.toggle()
                            }
                        }
                    }
                
                Spacer()

            }.navigationTitle("New Task")
        }
    }
}

//struct NewTaskSheet_Previews: PreviewProvider {
//    static var previews: some View {
//        NewTaskSheet()
//    }
//}
