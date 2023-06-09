//
//  NewTaskSheet.swift
//  Backlog
//
//  Created by Evan Nemetz on 6/4/23.
//

import SwiftUI

struct NewTaskSheet: View {
    @State var title: String
    // @State private var priority: PrioritySymbol
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                TextField("Task title", text: $title).padding(.all).multilineTextAlignment(.center).textFieldStyle(.roundedBorder)
                
                Text("Pick Priority")
                
                
                Button("Add task") {
                    print("Submitted")
                }.buttonStyle(.bordered)
                
//                Picker("Flavor", selection: $priority) {
//                    ForEach(PrioritySymbol.allCases) {value in
//                        Text(value.rawValue.capitalized)
//                    }
//                    }
            }.navigationTitle("New Task")
        }
    }
}

//struct NewTaskSheet_Previews: PreviewProvider {
//    static var previews: some View {
//        NewTaskSheet()
//    }
//}
