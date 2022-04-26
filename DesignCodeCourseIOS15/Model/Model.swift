//
//  Model.swift
//  DesignCodeCourseIOS15
//
//  Created by Sergiy Brotsky on 13.04.2022.
//

import SwiftUI
import Combine

class Model: ObservableObject{
    @Published var showDetail: Bool = false
    @Published var selectedModal: Modal = .signUp
}


enum Modal: String{
    case signUp
    case signIn
}
