//
//  ContentView.swift
//  ChecklistV2
//
//  Created by RelMac User Exercise3 on 2021/05/29.
//

import SwiftUI

struct ChecklistView: View {
   // @State var checklist.checklistItems = ["Walk the dog", "Brush my teeth", "Learn iOS development", "Soccer practice", "Eat ice cream"]
    
    @ObservedObject var checklist = Checklist()
    @State var newChecklistItemViewIsVisible = false
    
    var body: some View {
        NavigationView{
            List {
                ForEach(checklist.items){
                    index in
                        RowView(checklistItem: self.$checklist.items[index])
                } // End of ForEach
                .onDelete(perform: checklist.deleteListItem)
                .onMove(perform: checklist.moveListItem)
            } //End of list
            .navigationBarItems(
                leading: Button(action: {self.newChecklistItemViewIsVisible = true }) {
                    HStack {
                        Image(systemName: "plus.circle.fill")
                        Text("Add item")
                    }
                },
                trailing: EditButton())
            .navigationBarTitle("Checklist")
            //.onAppear() {
            //    self.checklist.printChecklistContents()
            //}
        } // End of navigationView
        .sheet(isPresented: $newChecklistItemViewIsVisible) {
            //Text("New item screen coming soon!")
            NewChecklistItemView(checklist: self.checklist)
        } // End of .sheet
        .onAppear() {
            print("ChecklistView has appeared!")
        }
        .onDisappear() {
            print("ChecklistView has disappeared!")
        }
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification))
            { _ in print("willResignActiveBotification")
                self.checklist.saveChecklistItems()
            }
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.didEnterBackgroundNotification))
            { _ in print("didEnterBackgroundNotification")
            }
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.willEnterForegroundNotification))
            { _ in print("willEnterForegroundNotification")
            }
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.didBecomeActiveNotification))
            { _ in print("didBecomeActiveNotification")
            }
    } // End of Body
    
    //Method
  
    
} // End of ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ChecklistView()
    }
}
