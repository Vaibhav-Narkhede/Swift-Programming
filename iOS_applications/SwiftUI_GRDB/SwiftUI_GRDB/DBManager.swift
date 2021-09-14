//
//  DBManager.swift
//  SwiftUI_GRDB
//
//  Created by VNProgrammer on 10/09/21.
//

import Foundation
import GRDB

var dbPool: DatabasePool!

struct Place:Codable, FetchableRecord, PersistableRecord {
    var id: Int64?
    var title: String
    var favorite: Bool
}

class DBManager {
    static let shared = DBManager()
    
    private init(){
        try? setup()
    }
    
    func setup() throws{
        let docPath = try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
        let dbPath = docPath.appendingPathComponent("emp.db").absoluteString
        print(dbPath)
        dbPool = try? DatabasePool(path: dbPath)
        
        
        try dbPool.write({ db in
            //try db.drop(table: "place")
            try db.create(table: "place") { t in
                t.autoIncrementedPrimaryKey("id")
                t.column("title", .text)
                t.column("favorite", .boolean).notNull().defaults(to: false)
            }
        })
    }
    
    func write() throws{
        print("writting in database")
        try dbPool.write({ db in
            try Place(id: 1, title: "India", favorite: true).insert(db)
            try Place(id: 2, title: "US", favorite: false).insert(db)
        })
    }
    func read() throws{
        print("reading from database")
        let places: [Place] = try dbPool.read({ db in
            try Place.fetchAll(db)
        })
        print(places)
    }
    
    func delete() throws{
        print("deleting from database")
        let res = try dbPool.write({ db in
            try Place.deleteAll(db)
        })
        print("deleted \(res) records")
    }
}
