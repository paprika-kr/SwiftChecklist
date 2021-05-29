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
                Text("Walk the dog")
                Text("Brush my teeth")
                Text("Learn iOS development")
                Text("Soccer practice")
                Text("Eat ice cream")
            } //End of list
            .navigationBarTitle("Checklist")
        } // End of navigationView
    } // End of Body
} // End of ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
