//
//  DesignCodeCourseIOS15App.swift
//  DesignCodeCourseIOS15
//
//  Created by Sergiy Brotsky on 01.04.2022.
//

import SwiftUI

@main
struct DesignCodeCourseIOS15App: App {
    @StateObject var model = Model()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
        }
    }
}
