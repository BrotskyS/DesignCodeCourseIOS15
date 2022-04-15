//
//  Suggestion.swift
//  DesignCodeCourseIOS15
//
//  Created by Sergiy Brotsky on 14.04.2022.
//

import SwiftUI

struct Suggestion: Identifiable{
    let id = UUID()
    var text: String
}


var suggestions = [
    Suggestion(text: "SwiftUI"),
    Suggestion(text: "React"),
    Suggestion(text: "Design")
]
