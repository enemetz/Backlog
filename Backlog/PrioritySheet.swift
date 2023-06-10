//
//  PrioritySheet.swift
//  Backlog
//
//  Created by Evan Nemetz on 6/9/23.
//

import SwiftUI

struct PrioritySheet: View {
    @Binding var item: Task
    @Binding var prioritySheetIsPresented: Bool
    var body: some View {
        VStack {
            Text("Select a priority level: ")
                .padding(25)
            HStack(spacing: 20) {
                Text("high")
                    .padding(6)
                    .font(Font.system(size: 24))
                    .background(RoundedRectangle(cornerRadius: 8).fill(.red))
                    .foregroundColor(.white)
                    .onTapGesture {
                        updatePriority(priority: PrioritySymbol.high)
                        prioritySheetIsPresented.toggle()
                    }
                Text("medium")
                    .padding(6)
                    .font(Font.system(size: 24))
                    .background(RoundedRectangle(cornerRadius: 8).fill(.mint))
                    .foregroundColor(.white)
                    .onTapGesture {
                        updatePriority(priority: PrioritySymbol.medium)
                        prioritySheetIsPresented.toggle()
                    }
                Text("low").padding(6)
                    .font(Font.system(size: 24))
                    .background(RoundedRectangle(cornerRadius: 8).fill(.indigo))
                    .foregroundColor(.white)
                    .onTapGesture {
                        updatePriority(priority: PrioritySymbol.low)
                        prioritySheetIsPresented.toggle()
                    }
            }
        }
       
    }
    
    func updatePriority(priority: PrioritySymbol) {
        item.priority = priority
    }
}


