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
    
    func addNewTask(task: Task){
        tasks.append(task)
    }
    
    func deleteTask(at offsets: IndexSet){
        tasks.remove(atOffsets: offsets)
    }
    
    func move(from : IndexSet, to : Int){
        tasks.move(fromOffsets: from, toOffset: to)
    }
}
