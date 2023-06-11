//
//  EnvironmentSheet.swift
//  Backlog
//
//  Created by Evan Nemetz on 6/11/23.
//

import SwiftUI

struct EnvironmentSheet: View {
    @Binding var task: Task
    @Binding var isPresented: Bool
    var body: some View {
        VStack {
            Text("Pick where to move task:")
            HStack {
                Text("active")
                    .padding(6)
                    .font(Font.system(size: 24))
                    .background(RoundedRectangle(cornerRadius: 8).fill(.green))
                    .foregroundColor(.white)
                    .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(task.isActive ? .blue: .clear, lineWidth: 3)
                        )
                    .onTapGesture {
                        // updatePriority(priority: PrioritySymbol.high)
                        print("toggle")
                        if(task.isActive) {
                            task.isActive = false
                        } else {
                            task.isActive = true
                        }
                        isPresented.toggle()
                    }
                
                Text("backlog")
                    .padding(6)
                    .font(Font.system(size: 24))
                    .background(RoundedRectangle(cornerRadius: 8).fill(.blue))
                    .foregroundColor(.white)
                    .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(!task.isActive ? .blue: .clear, lineWidth: 3)
                        )
                    .onTapGesture {
                        // updatePriority(priority: PrioritySymbol.high)
                        print("toggle")
                        updateActive(isActive: task.isActive)
                        isPresented.toggle()
                    }
            }
        }
    }
    func updateActive(isActive: Bool) {
        if(isActive) {
            task.isActive = false
        } else {
            task.isActive = true
        }
    }
}

//struct EnvironmentSheet_Previews: PreviewProvider {
//    static var previews: some View {
//        EnvironmentSheet()
//    }
//}
