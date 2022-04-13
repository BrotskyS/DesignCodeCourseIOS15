//
//  PreferenceKeys.swift
//  DesignCodeCourseIOS15
//
//  Created by Sergiy Brotsky on 13.04.2022.
//

import SwiftUI

struct ScrollPreferenceKeys: PreferenceKey{
    static var defaultValue: CGFloat = 0
    
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
