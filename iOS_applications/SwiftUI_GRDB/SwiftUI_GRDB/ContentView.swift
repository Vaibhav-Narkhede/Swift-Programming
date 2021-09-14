//
//  ContentView.swift
//  SwiftUI_GRDB
//
//  Created by VNProgrammer on 10/09/21.
//

import SwiftUI
import GRDB

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Database Operations!")
                .padding()
            
            HStack(alignment:.center){
                Button(action: {
                    try? DBManager.shared.write()
                }, label: {
                    Text("Insert")
                })
                
                Button(action:{
                    try? DBManager.shared.read()
                },label:{
                    Text("Read")
                })
                Button(action:{
                    try? DBManager.shared.delete()
                },label:{
                    Text("Delete")
                })
            }
            Spacer()
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
