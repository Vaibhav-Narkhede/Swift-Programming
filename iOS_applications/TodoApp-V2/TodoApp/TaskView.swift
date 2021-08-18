//
//  TaskView.swift
//  SwiftTodo
//
//  Created by VNProgrammer on 09/08/21.
//

import SwiftUI
import Combine

struct TaskView: View{
    @ObservedObject var taskStore = TaskStore()
    @State var newTask: String = ""
    
    var addTaskView: some View{
        HStack{
            TextField("Enter New task name", text: self.$newTask)
            
            Button(action:{
                let task = Task(id: UUID(), name: newTask)
                taskStore.addNewTask(task: task)
                newTask = ""
            }, label: {Text("Add Task")}).disabled(newTask.isEmpty)
        }
    }
    
    var body: some View{
        NavigationView{
            VStack{
                addTaskView.padding()
                List(){
                    ForEach(self.taskStore.tasks){
                        task in
                        Text(task.name)
                    }
                    .onMove(perform: taskStore.move(from:to:))
                    .onDelete(perform: taskStore.deleteTask(at:))
                }.navigationBarTitle("Tasks V2")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(trailing: EditButton())
            }
        }
    }
}

struct TaskView_previews: PreviewProvider{
    static var previews : some View{
        TaskView()
    }
}
