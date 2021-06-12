//
//  NewChecklistItemView.swift
//  ChecklistV2
//
//  Created by RelMac User Exercise3 on 2021/06/12.
//

import SwiftUI

struct NewChecklistItemView: View {
    var body: some View {
        VStack {
            Text("Add new item")
            Text("Enter item name")
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                HStack {
                    Image(systemName: "plus.circle.fill")
                    Text("Add new item")
                } // End of HStack
            }// End of Button
            Text("Swipe down to cancel.")
        } // End of VStack
    }// End of body
} // End of View

struct NewChecklistItemView_Previews: PreviewProvider {
    static var previews: some View {
        NewChecklistItemView()
    }
}
