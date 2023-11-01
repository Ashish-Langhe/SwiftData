//
//  ContentView.swift
//  SwiftDataDemo
//
//  Created by Ashish Langhe on 01/11/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Query private var items: [DataItem]
    @Environment(\.modelContext) private var context
    
    var body: some View {
        VStack {
            Text("Tap on this button to add data!!")
            Button("Add an item") {
                addItem()
            }
            
            List {
                ForEach (items) { item in
                    HStack {
                        Text(item.name)
                        Spacer()
                        Button {
                            updateItem(item)
                        } label: { Image(systemName: "arrow.triangle.2.circlepath") }
                    }
                }
                .onDelete { indexes in
                    for index in indexes {
                        deleteItem(items[index])
                    }
                }
            }
        }
        .padding()
    }
    
    func deleteItem(_ item: DataItem) {
        context.delete(item)
    }
    
    func addItem(){
        //create the item
        let item = DataItem(name: "Test Item")
        
        //add the item
        context.insert(item)
    }
    
    func updateItem(_ item: DataItem){
        
        //update the item
        item.name = "Updated Item"
        
        //save the item
        try? context.save()
    }
}

#Preview {
    ContentView()
}
