//
//  ContentView.swift
//  ChecklistV2
//
//  Created by RelMac User Exercise3 on 2021/05/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List {
                Section(header: Text("High priority")){
                    Group{
                        Text("Walk the dog")
                        Text("Brush my teeth")
                        Text("Learn iOS development")
                        Text("Make dinner")
                        Text("Do laundry")
                        Text("Pay bills")
                    }
                    Group {
                    Text("Finish homework")
                    Text("Change internet provider")
                    Text("Clean the kitchen")
                    Text("Wash the car")
                    Text("Wash the hair")
                    }
                }
                Section(header: Text("Low priority")){
                    Text("Soccer practice")
                    Text("Eat ice cream")
                }
            } //End of list
            .listStyle(GroupedListStyle())
            .navigationBarTitle("Checklist")
        } // End of navigationView
    } // End of Body
} // End of ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
