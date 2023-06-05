//
//  Task.swift
//  Backlog
//
//  Created by Evan Nemetz on 6/4/23.
//

import Foundation
import SwiftUI

struct Task: Identifiable, Hashable {
    var id = UUID()
    var title: String
    var priority: PrioritySymbol
    
}

enum PrioritySymbol: String {
    case high = "chevron.up"
    case medium = "minus"
    case low = "chevron.down"
    
}
