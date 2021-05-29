//
//  ContentView.swift
//  ChecklistV2
//
//  Created by RelMac User Exercise3 on 2021/05/29.
//

import SwiftUI

struct ContentView: View {
    @State var checklistItems = ["Walk the dog", "Brush my teeth", "Learn iOS development", "Soccer practice", "Eat ice cream"]
    var body: some View {
        NavigationView{
            List {
                Text(checklistItems[0])
                    .onTapGesture {
                        self.checklistItems[0] = "Take the dog to the vet"
                    }
                Text(checklistItems[1])
                Text(checklistItems[2])
                Text(checklistItems[3])
                Text(checklistItems[4])
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
