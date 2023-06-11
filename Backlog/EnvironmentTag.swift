//
//  EnvironmentTag.swift
//  Backlog
//
//  Created by Evan Nemetz on 6/11/23.
//

import SwiftUI

struct EnvironmentTag: View {
   @State var task: Task
    var body: some View {
        Text(task.isActive ? "active" : "backlog")
            .padding(6)
            .background(RoundedRectangle(cornerRadius: 8).fill(task.isActive ? .green : .blue)).foregroundColor(.white)
    }
}

//struct EnvironmentTag_Previews: PreviewProvider {
//    static var previews: some View {
//        EnvironmentTag()
//    }
//}
