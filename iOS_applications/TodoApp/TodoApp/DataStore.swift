//
//  DataStore.swift
//  SwiftTodo
//
//  Created by VNProgrammer on 09/08/21.
//

import Foundation
import SwiftUI
import Combine

struct Task: Identifiable{
    var id = UUID()
    var name = String()
}

class TaskStore: ObservableObject{
    @Published var tasks = [Task]()
}
