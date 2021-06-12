//
//  RowView.swift
//  ChecklistV2
//
//  Created by RelMac User Exercise3 on 2021/06/12.
//

import SwiftUI

struct RowView: View {
    
    @Binding var checklistItem: ChecklistItem
    
    var body: some View {
        NavigationLink(destination: EditChecklistItemView(checklistItem: $checklistItem)) {
            HStack{
                Text(checklistItem.name)
                Spacer()
                Text(checklistItem.isChecked ? "✅" : "⬛️")
            } // End of HStack
        }// End of NavigationLink
    } // End of View
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(checklistItem: .constant(ChecklistItem(name: "Sample item")))
    }
}
