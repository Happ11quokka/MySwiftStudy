//
//  DataItemModel.swift
//  Greetings
//
//  Created by 임동현 on 1/3/25.
//

import SwiftUI

struct DataItemModel: Identifiable {
    let id = UUID()
    let text: String
    let color: Color
}
