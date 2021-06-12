//
//  EditChecklistItemView.swift
//  ChecklistV2
//
//  Created by RelMac User Exercise3 on 2021/06/04.
//

import SwiftUI

struct EditChecklistItemView: View {
    
    @Binding var checklistItem: ChecklistItem
    
    var body: some View {
        Form {
            TextField("Name", text: $checklistItem.name)
            Toggle("Completed", isOn: $checklistItem.isChecked)
        } //End of Form
        .onAppear() {
            print("ChecklistView has appeared!")
        }
        .onDisappear() {
            print("ChecklistView has disappeared!")
        }
    } // End of body
}

struct EditChecklistItemView_Previews: PreviewProvider {
    static var previews: some View {
        EditChecklistItemView(checklistItem: .constant(ChecklistItem(name: "Sample item")))
    }
}
