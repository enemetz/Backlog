//
//  MockData.swift
//  Backlog
//
//  Created by Evan Nemetz on 6/10/23.
//

import Foundation

class MockData: Identifiable {
    
    func getMockData() -> [Task] {
         var tasks = [
            Task(title: "high priority item", priority: .high),
            Task(title: "low priority item", priority: .low),
            Task(title: "medium priority item", priority: .medium),
            Task(title: "item", priority: .low, isActive: true),
            Task(title: "active item", priority: .high, isActive: true)
        ]
        
        return tasks
    }
}


