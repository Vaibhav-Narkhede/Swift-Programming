//
//  ContentView.swift
//  SwiftTodo
//
//  Created by VNProgrammer on 09/08/21.
//

import SwiftUI
import Combine

struct ContentView: View{
    @ObservedObject var taskStore = TaskStore()
    @State var newTask: String = ""
    
    var searchBar: some View{
        HStack{
            TextField("Enter New task name", text: self.$newTask)
            
            Button(action:{
                self.addNewTask()
            }, label: {Text("Add Task")}).disabled(newTask.isEmpty)
        }
    }
    
    func addNewTask(){
        let task = Task(id: UUID(), name: newTask)
        taskStore.tasks.append(task)
        self.newTask = ""
    }
    
    func deleteTask(at offsets: IndexSet){
        taskStore.tasks.remove(atOffsets: offsets)
    }
    
    func move(from : IndexSet, to : Int){
        taskStore.tasks.move(fromOffsets: from, toOffset: to)
    }
    
    var body: some View{
        NavigationView{
            VStack{
                searchBar.padding()
                List(){
                    ForEach(self.taskStore.tasks){
                        task in
                        Text(task.name)
                    }
                    .onMove(perform: self.move(from:to:))
                    .onDelete(perform: self.deleteTask(at:))
                }.navigationBarTitle("Tasks")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(trailing: EditButton())
            }
        }
    }
}

struct ContentView_previews: PreviewProvider{
    static var previews : some View{
        ContentView()
    }
}
