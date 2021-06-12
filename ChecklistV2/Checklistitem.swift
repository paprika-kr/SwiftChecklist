//
//  Checklistitem.swift
//  ChecklistV2
//
//  Created by RelMac User Exercise3 on 2021/06/04.
//

import Foundation

struct ChecklistItem: Identifiable, Codable {
    let id = UUID()
    var name: String
    var isChecked: Bool = false
}
