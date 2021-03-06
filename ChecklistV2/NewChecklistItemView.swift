//
//  NewChecklistItemView.swift
//  ChecklistV2
//
//  Created by RelMac User Exercise3 on 2021/06/12.
//

import SwiftUI

struct NewChecklistItemView: View {
    var checklist: Checklist
    @State var newItemName = ""
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("Add new item")
            Form {
                //Text("Enter item name")
                TextField("Enter new item name here", text: $newItemName)
                Button(action: {
                    let newChecklistItem = ChecklistItem(name: self.newItemName)
                    self.checklist.items.append(newChecklistItem)
                    self.checklist.printChecklistContents()
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    HStack {
                        Image(systemName: "plus.circle.fill")
                        Text("Add new item")
                    } // End of HStack
                }// End of Button
                .disabled(newItemName.count == 0)
            } // End of Form
            Text("Swipe down to cancel.")
        } // End of VStack
        .onAppear() {
            print("ChecklistView has appeared!")
        }
        .onDisappear() {
            print("ChecklistView has disappeared!")
        }
    }// End of body
} // End of View

struct NewChecklistItemView_Previews: PreviewProvider {
    static var previews: some View {
        NewChecklistItemView(checklist: Checklist())
    }
}
