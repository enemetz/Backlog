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
    
    // @State private var priority: PrioritySymbol
    @Binding var isPresented: Bool
    @State var newTask: Task
    @State private var isSelectedPriority = false
    // @State private var priority: PrioritySymbol

    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                TextField("Task title", text: $title).padding(.all).multilineTextAlignment(.center).textFieldStyle(.roundedBorder).font(Font.system(size: 16))
                
                Text("Pick Priority")
                
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
                        //.border(newTask.priority == .medium ? .blue: .clear)
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
//                        .border(newTask.priority == .low ? .blue: .clear)
                        .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(newTask.priority == .low ? .blue: .clear, lineWidth: 3)
                            )
                        .onTapGesture {
                            newTask.priority = PrioritySymbol.low
                        }
                }
                Spacer()
                Button("Add task") {
                    print("Submitted")
                    newTask.title = title
                    items.append(newTask)
                    isPresented.toggle()
                }.buttonStyle(.bordered).padding()
                
//                Picker("Flavor", selection: $priority) {

            }.navigationTitle("New Task")
        }
    }
}

//struct NewTaskSheet_Previews: PreviewProvider {
//    static var previews: some View {
//        NewTaskSheet()
//    }
//}
