//
//  swiftUI_TestApp.swift
//  swiftUI_Test
//
//  Created by 서정덕 on 2022/11/03.
//

import SwiftUI

@main
struct swiftUI_TestApp: App {
    
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
